/*!
 * \file pc_interface.h
 */
#ifndef PC_INTERFACE_H
#define PC_INTERFACE_H

#include "global_def.h"

/*!
 * \def PCINF_BUFF_LEN
 * 
 * Size of receive buffer
 */
#ifndef PCINF_BUFF_LEN
#define PCINF_BUFF_LEN                          (128)
#endif


/*!
 * \def PCINF_MAX_XMIT
 * 
 * Size of transmit buffer
 */
#ifndef PCINF_MAX_XMIT
#define PCINF_MAX_XMIT                          (64)
#endif


/*!
 * \def configTASK_PCINF_SEND_INTERVAL_MS
 * 
 * Time interval between stream packet.
 */
#ifndef configTASK_PCINF_SEND_INTERVAL_MS
#define configTASK_PCINF_SEND_INTERVAL_MS       (5)
#endif


/*!
 * \def TAG_CMD
 * 
 * The value of the tag byte for a command packet.
 */
#define TAG_CMD                         (0xff)


/*!
 * \def TAG_STATUS
 * 
 * The value of the tag byte for a status packet.
 */
#define TAG_STATUS                      (0xfe)


/*!
 * \def TAG_DATA
 * 
 * The value of the tag byte for a real-time stream data packet.
 */
#define TAG_DATA                        (0xfd)


/*!
 * \def TAG_LOG
 * 
 * The value of the tag byte for a log packet.
 */
#define TAG_LOG                         (0xfc)

#define CMD_GET_DATA_ITEMS              (0x20)
#define CMD_ENABLE_DATA_ITEM            (0x21)
#define CMD_DISABLE_DATA_ITEM           (0x22)
#define CMD_START_DATA_STREAM           (0x23)
#define CMD_STOP_DATA_STREAM            (0x24)

/*!
 * \enum PCINTERFACE_RETVAL
 * 
 * Enumeration of PC Interface return values
 */
typedef enum {
    PCINTERFACE_NOERROR = 0,        //!< No Error
    PCINTERFACE_LOG_DISABLED,       //!< Log level is disabled
    PCINTERFACE_STREAM_ENABLED,     //!< Log is disabled when streaming is enabled
    PCINTERFACE_ERR_TASK_CREATE,    //!< Failed to create Task
} PCINTERFACE_RETVAL_T;


/*!
 * \enum DATA_STREAM_ITEM_T
 */
typedef enum {
    DATA_TIME = 0,
    DATA_CURRENT_ADC_WINDING,
    DATA_VOLTAGE_ADC_WINDING,
    DATA_CURRENT_A_WINDING1,
    DATA_CURRENT_A_WINDING2,
    DATA_CURRENT_A_WINDING3,
    DATA_VOLTAGE_V_WINDING1,
    DATA_VOLTAGE_V_WINDING2,
    DATA_VOLTAGE_V_WINDING3,

    N_DATA_STREAM_ITEM
} DATA_STREAM_ITEM_T;

#if(N_DATA_STREAM_ITEM > 16)
#error "Maximum number of data stream item is 16!!"
#endif


/*!
 * \enum LOG_LEVEL_T
 * 
 * Enumeration of the Log Level
 */
typedef enum {
    LOG_DISABLED = 0,               //!< Logging is disabled
    LOG_INFO,                       //!< General Information Logging
    LOG_WARNING,                    //!< Warning Level Logging
    LOG_ERROR                       //!< Error Level Logging
} LOG_LEVEL_T;


/*!
 * 
 */
PCINTERFACE_RETVAL_T PcInf_Init();

/*!
 * 
 */
PCINTERFACE_RETVAL_T AppPcInf_SendLog(LOG_LEVEL_T level, const char *ps8_str);

#endif // End PC_INTERFACE_H
