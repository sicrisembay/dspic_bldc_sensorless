/*!
 * \file drv_uart.c
 */

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#include "global_def.h"
#include "drv_uart.h"
#include "PinConfig.h"

//=================================================================================================
// Private definitions.
//=================================================================================================
#define BRGVAL          (((configCPU_CLOCK_HZ/configUART_BAUDRARE)/16) - 1)

//=================================================================================================
// Private member declarations.
//=================================================================================================
static BOOLEAN_T b_init = FALSE;        // Flag that indicates driver is initialized
static QueueHandle_t xRxedChars;        // Queue for received data
static QueueHandle_t xCharsForTx;       // Queue for data to be transmitted
static SemaphoreHandle_t xSemaphoreTx;  // Mutex Handle to protect packet transmission
static portBASE_TYPE xTxHasEnded;       // Flag that indicates that data transmission has ended

//=================================================================================================
// Public / Internal member external declarations.
//=================================================================================================

//=================================================================================================
// Private function prototypes.
//=================================================================================================


//=================================================================================================
// - Public function implementations.
//=================================================================================================
RET_DRV_UART_T DrvUart_Init(void)
{
    /*
     * local variable
     */
    RET_DRV_UART_T retval = DRV_UART_ERR_NONE;          // return value
    char cChar = 0;

    /*
     * Check if driver is already initialized
     */
    if(FALSE == b_init)
    {
        /*
         * Initialize HW peripheral
         */
        /* Configure the Port pins */
        PIN_DIR_OUT(DIR_U1TX);
        PIN_DIR_IN(DIR_U1RX);
      
        /* Setup the UART. */
        U1MODEbits.BRGH         = 0;
        U1MODEbits.STSEL        = 0;
        U1MODEbits.PDSEL        = 0;
        U1MODEbits.ABAUD        = 0;
        U1MODEbits.LPBACK       = 0;
        U1MODEbits.WAKE         = 0;
        U1MODEbits.UEN          = 0;
        U1MODEbits.IREN         = 0;
        U1MODEbits.USIDL        = 0;
        U1MODEbits.UARTEN       = 1;

        U1BRG = BRGVAL;

        U1STAbits.URXISEL       = 0;
        U1STAbits.UTXEN         = 1;
        U1STAbits.UTXINV        = 0;
        U1STAbits.UTXISEL0      = 1;
        U1STAbits.UTXISEL1      = 0;

        /* Create the queues used by the com test task. */
        xRxedChars = xQueueCreate( DRV_UART_RX_QUEUE_LEN, ( unsigned portBASE_TYPE ) sizeof( UNSIGNED8_T ) );
        xCharsForTx = xQueueCreate( DRV_UART_TX_QUEUE_LEN, ( unsigned portBASE_TYPE ) sizeof( UNSIGNED8_T ) );
        if((xRxedChars == 0) || (xCharsForTx == 0)) {
            retval = DRV_UART_ERR_QUEUE_CREATE;
        } else {
            xSemaphoreTx = xSemaphoreCreateMutex();
            if(xSemaphoreTx == NULL) {
                retval = DRV_UART_ERR_MUTEX_CREATE;
            } else {
                /*
                 * It is assumed that this function is called prior to the scheduler being
                 * started.  Therefore interrupts must not be allowed to occur yet as they
                 * may attempt to perform a context switch.
                 */
                portDISABLE_INTERRUPTS();

                IFS0bits.U1RXIF = 0;
                IFS0bits.U1TXIF = 0;
                IPC2bits.U1RXIP = configKERNEL_INTERRUPT_PRIORITY;
                IPC3bits.U1TXIP = configKERNEL_INTERRUPT_PRIORITY;

                /* Clear the Rx buffer. */
                while( U1STAbits.URXDA) {
                    cChar = U1RXREG;
                }

                xTxHasEnded = pdTRUE;
                b_init = TRUE;

                /* Enable Interrupt */
                IEC0bits.U1TXIE = 1;
                IEC0bits.U1RXIE = 1;
            }
        }
    }

    return(retval);
}


RET_DRV_UART_T DrvUart_Read(UNSIGNED8_T *pu8_rcvByte, TickType_t xBlockTime)
{
    RET_DRV_UART_T retval = DRV_UART_ERR_NONE;
    
    /*
     * Check for valid pointer
     */
    if((UNSIGNED8_T *)0 != pu8_rcvByte) {
        if(!(xQueueReceive(xRxedChars, pu8_rcvByte, xBlockTime))) {
            retval = DRV_UART_ERR_QUEUE_TIMEOUT;
        }
    } else {
        retval = DRV_UART_ERR_INVALID_ARG;
    }
    return(retval);
}


RET_DRV_UART_T DrvUart_Write(SIGNED8_T *ps8_data, UNSIGNED16_T u16_nbyte)
{
    RET_DRV_UART_T retval = DRV_UART_ERR_NONE;
    UNSIGNED16_T idx = 0;
    SIGNED8_T byteToTx = 0;

    if(b_init != TRUE) {
        retval = DRV_UART_UNINITIALIZED;
    } else {
        if((SIGNED8_T *)0 == ps8_data) {
            retval = DRV_UART_ERR_INVALID_ARG;
        } else {
            /* Protect the packet.  Block at most 100ms */
            if(xSemaphoreTake(xSemaphoreTx, 100) == pdTRUE) {
                /* Able to obtain the semaphore and can now access the shared resource. */
                if(0 != u16_nbyte) {
                    for(idx = 0; idx < u16_nbyte; idx++) {
                        byteToTx = *ps8_data;
                        ps8_data++;
                        if(pdPASS != (xQueueSend(xCharsForTx, (void *)&byteToTx, 0))) {
                            retval = DRV_UART_WRITE_FULL;
                            break;
                        }
                    }

                    /*
                     * A critical section should not be required as xTxHasEnded will not be
                     * written to by the ISR if it is already 0 (is this correct?)
                     */
                    if( xTxHasEnded ) {
                        xTxHasEnded = pdFALSE;
                        IFS0bits.U1TXIF = 1;
                    }
                }

                /* Finished accessing the shared resource.  Release the semaphore. */
                xSemaphoreGive(xSemaphoreTx);

            } else {
                /* could not obtain the semaphore. */
                retval = DRV_UART_ERR_W_MUTEX_TAKE;
            }
        }
    }

    return(retval);
}


void __attribute__((__interrupt__, auto_psv)) _U1RXInterrupt( void )
{
    char cChar;
    portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;

    HOOK_TRACE_IN(CTX_U1RX_ISR, TRUE);
    /*
     * Get the character and post it on the queue of Rxed characters.
     * If the post causes a task to wake force a context switch as the woken task
     * may have a higher priority than the task we have interrupted.
     */
    IFS0bits.U1RXIF = 0;
    while( U1STAbits.URXDA ) {
        cChar = U1RXREG;
        xQueueSendFromISR( xRxedChars, &cChar, &xHigherPriorityTaskWoken );
    }

    HOOK_TRACE_OUT(TRUE);
    if( xHigherPriorityTaskWoken != pdFALSE ) {
        taskYIELD();
    }
}


void __attribute__((__interrupt__, auto_psv)) _U1TXInterrupt( void )
{
    volatile signed char cChar;
    portBASE_TYPE xTaskWoken = pdFALSE;

    HOOK_TRACE_IN(CTX_U1TX_ISR, TRUE);
    /*
     * If the transmit buffer is full we cannot get the next character.
     * Another interrupt will occur the next time there is space so this does
     * not matter.
     */
    IFS0bits.U1TXIF = 0;
    while( !( U1STAbits.UTXBF ) ) {
        if( xQueueReceiveFromISR( xCharsForTx, (void*)&cChar, &xTaskWoken ) == pdTRUE ) {
            /* Send the next character queued for Tx. */
            U1TXREG = cChar;
        } else {
            /* Queue empty, nothing to send. */
            xTxHasEnded = pdTRUE;
            break;
        }
    }

    HOOK_TRACE_OUT(TRUE);
    if( xTaskWoken != pdFALSE ) {
        taskYIELD();
    }
}
