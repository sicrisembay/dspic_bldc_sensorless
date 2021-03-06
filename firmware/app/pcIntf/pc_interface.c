/*!
 * \file pc_interface.c
 */

#include "FreeRTOS.h"
#include "task.h"

#include "global_def.h"
#include "pc_interface.h"
#include "drv_uart.h"

//=================================================================================================
// Private definitions.
//=================================================================================================

//=================================================================================================
// Private member declarations.
//=================================================================================================
static TaskHandle_t xTaskHandlePcInf = NULL;
static TaskHandle_t xTaskHandlePcInfDataSend = NULL;
static UNSIGNED8_T pu8_PcInf_ReceiveBuffer[PCINF_BUFF_LEN];

// A buffer used to construct status packets before they are written to the UART
static UNSIGNED8_T pu8_PcInf_ResponseBuffer[PCINF_MAX_XMIT];

// A buffer used to construct streaming packet
static UNSIGNED8_T pu8_PcInf_XmitDataBuffer[PCINF_MAX_XMIT];

// Flags used for Data streaming
static BOOLEAN_T bPcInfDataStreamIsRunning = FALSE;
static UNSIGNED16_T u16PcInfDataFlag = 0;

// Logging Level
static LOG_LEVEL_T logLevel = LOG_INFO;


//=================================================================================================
// Public / Internal member external declarations.
//=================================================================================================

//=================================================================================================
// Private function implementation.
//=================================================================================================
static void PrvPcInf_ProcessPacket(UNSIGNED8_T u8_idx, UNSIGNED8_T u8_size)
{
    UNSIGNED8_T cmdId = 0;
    UNSIGNED8_T u8_tempVal = 0;
    UNSIGNED16_T u16_tempVal = 0;
    SIGNED16_T  s16_tempVal = 0;
    SIGNED32_T  s32_tempVal1 = 0;
    SIGNED32_T  s32_tempVal2 = 0;
    SIGNED32_T  s32_tempVal3 = 0;
    SIGNED32_T  s32_tempVal4 = 0;
    SIGNED32_T  s32_tempVal5 = 0;
    
    cmdId = pu8_PcInf_ReceiveBuffer[u8_idx];
    
    switch(cmdId)
    {
        default: {
            break;
        }
    }
}


static BOOLEAN_T PrvPcInf_TransmitPacket(UNSIGNED8_T *pu8Buffer)
{
    UNSIGNED8_T u8Length;
    UNSIGNED8_T u8Sum;
    UNSIGNED16_T u16Idx;
    BOOLEAN_T retval = TRUE;

    // TODO: Protect with MUTEX

    u8Length = pu8Buffer[1];

    // Compute the checksum for this packet and put it at the end.
    for(u16Idx = 0, u8Sum = 0; u16Idx < (u8Length - 1); u16Idx++)
    {
        u8Sum -= pu8Buffer[u16Idx];
    }
    pu8Buffer[u8Length - 1] = u8Sum;

    /* Transmit the packet */
    if(DRV_UART_ERR_NONE != DrvUart_Write((SIGNED8_T*)pu8Buffer, u8Length)) {
        retval = FALSE;
    }

    return(retval);
}


static void PrvPcInf_Receive(void *pvParam)
{
    UNSIGNED8_T u8_rcv = 0;
    UNSIGNED8_T u8_rdPtr = 0;
    UNSIGNED8_T u8_wrPtr = 0;
    UNSIGNED8_T u8_length = 0;
    UNSIGNED16_T u16_size = 0;
    UNSIGNED16_T u16_idx = 0;
    UNSIGNED8_T u8_sum = 0;
    
    vTaskSetApplicationTaskTag(NULL, (void *)CTX_TASK_PCINF_RX);
    
    while(1) {
        if(DRV_UART_ERR_NONE == DrvUart_Read(&u8_rcv, portMAX_DELAY)) {
            pu8_PcInf_ReceiveBuffer[u8_wrPtr] = u8_rcv;
            u8_wrPtr = (u8_wrPtr + 1) % PCINF_BUFF_LEN;
        }

        /* Parse Packet */
        while(u8_wrPtr != u8_rdPtr) {
            /* Check start of command TAG */
            if(TAG_CMD != pu8_PcInf_ReceiveBuffer[u8_rdPtr]) {
                /* Skip character */
                u8_rdPtr = (u8_rdPtr + 1) % PCINF_BUFF_LEN;
                continue;
            }

            /* See if there are additional characters in the receive buffer. */
            if(((u8_rdPtr + 1) % PCINF_BUFF_LEN) == u8_wrPtr) {
                /*
                 * There are no additional characters in the receive buffer after
                 * the start of command packet byte, so stop scanning for now.
                 */
                break;
            }

            /*
             * See if the packet size byte is valid.  A command packet must be at
             * least four bytes and can not be larger than the receive buffer size.
             */
            u8_length = pu8_PcInf_ReceiveBuffer[(u8_rdPtr+1)%PCINF_BUFF_LEN];
            if((u8_length < 4) || (u8_length > (PCINF_BUFF_LEN-1))) {
                /*
                 * The packet size is too large, so either this is not the start of
                 * a packet or an invalid packet was received.  Skip this start of
                 * command packet tag.
                 */
                u8_rdPtr = (u8_rdPtr + 1) % PCINF_BUFF_LEN;
                /* Keep scanning for a start of command packet tag. */
                continue;
            }

            /* Determine the number of bytes in the receive buffer. */
            if(u8_rdPtr > u8_wrPtr) {
                u16_size = PCINF_BUFF_LEN + u8_wrPtr - u8_rdPtr;
            } else {
                u16_size = u8_wrPtr - u8_rdPtr;
            }

            /* If the entire command packet is not in the receive buffer then stop */
            if(u16_size < u8_length) {
                break;
            }

            /*
             * The entire command packet is in the receive buffer, so compute its
             * checksum.
             */
            for(u16_idx = 0, u8_sum = 0; u16_idx < u8_length; u16_idx++) {
                u8_sum += pu8_PcInf_ReceiveBuffer[(u8_rdPtr + u16_idx)%PCINF_BUFF_LEN];
            }

            /*
             * Skip this packet if the checksum is not correct (that is, it is
             * probably not really the start of a packet).
             */
            if(u8_sum != 0) {
                /* Skip this character */
                u8_rdPtr = (u8_rdPtr + 1) % PCINF_BUFF_LEN;

                /* Keep scanning for a start of command packet tag. */
                continue;
            }

            /* A valid command packet was received, so process it now. */
            PrvPcInf_ProcessPacket((u8_rdPtr+2) % PCINF_BUFF_LEN, (u8_rdPtr+1) % PCINF_BUFF_LEN);
            
            /* Done with processing this command packet. */
            u8_rdPtr = (u8_rdPtr + u8_length) % PCINF_BUFF_LEN;
        }
    }
}


static void PrvPcInf_TskSendData(void *pvParam)
{
    /* Local variables */
    TickType_t xLastWakeTime;
    UNSIGNED16_T nDataCount;
    SIGNED16_T s16TempVal;
    UNSIGNED16_T u16TempVal;
    SIGNED32_T s32TempVal;
    _Q16 q16TempVal;

    (void)pvParam;  // unused

    /* Initialize task tag for execution trace */
    vTaskSetApplicationTaskTag(NULL, (void *)CTX_TASK_PCINF_DATA_STREAM);
    
    /* Initialise the xLastWakeTime variable with the current time */
    xLastWakeTime = xTaskGetTickCount();

    /* task main loop */
    while(1) {
        if(bPcInfDataStreamIsRunning != TRUE) {
            vTaskSuspend(NULL);
            xLastWakeTime = xTaskGetTickCount();
        } else {
            /*
             * Gather Data and Send
             */
            
            /* Wait for the next cycle */
            vTaskDelayUntil(&xLastWakeTime, configTASK_PCINF_SEND_INTERVAL_MS);
        }
    }
    
    /* should not reach here */
    vTaskSuspend(NULL);
}



//=================================================================================================
// - Public function implementations.
//=================================================================================================

PCINTERFACE_RETVAL_T PcInf_Init()
{
    PCINTERFACE_RETVAL_T ret = PCINTERFACE_NOERROR;

    /* Create RX Task */
    if(pdPASS != xTaskCreate(PrvPcInf_Receive, "RX", 
                            configTASK_STACK_PCINF_RECEIVE,
                            NULL,
                            configTASK_PRIORITY_PCINF_RECEIVE,
                            &xTaskHandlePcInf)) {
        /* Failed to create RX Task */
        ret = PCINTERFACE_ERR_TASK_CREATE;
    } else {
        /* Create TX Task */
        if(pdPASS != xTaskCreate(PrvPcInf_TskSendData, 
                            "TX",
                            configTASK_STACK_PCINF_SEND,
                            NULL,
                            configTASK_PRIORITY_PCINF_SEND,
                            &xTaskHandlePcInfDataSend)) {
            /* Failed to create TX Task */
            ret = PCINTERFACE_ERR_TASK_CREATE;
        }
    }

    return (ret);
}


PCINTERFACE_RETVAL_T AppPcInf_SendLog(LOG_LEVEL_T level, const char *ps8_str)
{
    PCINTERFACE_RETVAL_T retval = PCINTERFACE_NOERROR;
    UNSIGNED16_T len;
    char *pStr = (char *)ps8_str;
    SIGNED8_T ps8_PcInf_LogBuffer[PCINF_MAX_XMIT];

    if(level >= logLevel) {
        if(TRUE != bPcInfDataStreamIsRunning) {
            // Get Length
            for (len = 0; len < (PCINF_MAX_XMIT - 3); len++, pStr++) {
                if (!*pStr) {
                    break;
                }
            }

            ps8_PcInf_LogBuffer[0] = TAG_LOG;
            ps8_PcInf_LogBuffer[1] = len + 3;
            memcpy((void*)(&ps8_PcInf_LogBuffer[2]), (void*)ps8_str, len);
            PrvPcInf_TransmitPacket((UNSIGNED8_T*)ps8_PcInf_LogBuffer);
        } else {
            retval = PCINTERFACE_STREAM_ENABLED;
        }
    } else {
        retval = PCINTERFACE_LOG_DISABLED;
    }

    return(retval);
}
