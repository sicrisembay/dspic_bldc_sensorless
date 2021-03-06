/*!
 * \file drv_uart.h
 */
#ifndef DRV_UART_H
#define DRV_UART_H

#include "global_def.h"

/*!
 * \def DRV_UART_TX_QUEUE_LEN
 */
#ifndef DRV_UART_TX_QUEUE_LEN
#define DRV_UART_TX_QUEUE_LEN           (256)
#endif


/*!
 * \def DRV_UART_RX_QUEUE_LEN
 */
#ifndef DRV_UART_RX_QUEUE_LEN
#define DRV_UART_RX_QUEUE_LEN           (128)
#endif


/*!
 * \def configUART_BAUDRARE          
 */
#ifndef configUART_BAUDRARE
#define configUART_BAUDRARE             (115200)
#endif


/*!
 * \enum RET_DRV_UART_T
 * 
 * Enumeration of all return values of UART driver
 */
typedef enum {
    DRV_UART_ERR_NONE                   /*!< No Error*/,
    DRV_UART_ERR_INVALID_ARG            /*!< Invalid argument */,
    DRV_UART_ERR_QUEUE_CREATE           /*!< Failed to create queue */,
    DRV_UART_ERR_MUTEX_CREATE           /*!< Failed to create mutex */,
    DRV_UART_ERR_QUEUE_TIMEOUT          /*!< Queue block timeout */,
    DRV_UART_ERR_W_MUTEX_TAKE           /*!< Failed to obtain mutex */,
    DRV_UART_READ_EMPTY                 /*!< Receive Buffer is Empty */,
    DRV_UART_WRITE_FULL                 /*!< Transmit Buffer is Full */,
    DRV_UART_UNINITIALIZED              /*!< Uart not initialized */,

    // Should always be the last
    DRV_UART_MAX_NBR                    /** Maximum number of enumerated entries */
} RET_DRV_UART_T;


/*!
 * \brief  This function initializes the uart driver.  This shall be called before the
 *         scheduler is started.
 * 
 * \param  None
 * 
 * \return \b DRV_UART_ERR_NONE          No error \n
 *         \b DRV_UART_ERR_MUTEX_CREATE  Failure to create Mutex \n
 */
RET_DRV_UART_T DrvUart_Init(void);


/*!
 * \brief  This function writes to UART transmit
 * 
 * \param  ps8_data                Pointer to data to be transmitted
 * \param  u16_nbyte               Number of bytes to transmit
 * 
 * \return \b DRV_UART_ERR_NONE         No error \n
 *         \b DRV_UART_ERR_INVALID_ARG  Invalid Argument \n
 */
RET_DRV_UART_T DrvUart_Write(SIGNED8_T *ps8_data, UNSIGNED16_T u16_nbyte);


/*!
 * \brief  This function reads one byte from the UART receive
 * 
 * \param  pu8_rcvByte Pointer that holds the received byte
 * \param  blockTime   Queue blocking time
 * 
 * \return \b DRV_UART_ERR_NONE            No error \n
 *         \b DRV_UART_ERR_INVALID_ARG     Invalid Argument \n
 *         \b DRV_UART_ERR_QUEUE_TIMEOUT   Timeout \n
 */
RET_DRV_UART_T DrvUart_Read(UNSIGNED8_T *pu8_rcvByte, TickType_t xBlockTime);

#endif // End DRV_UART_H
