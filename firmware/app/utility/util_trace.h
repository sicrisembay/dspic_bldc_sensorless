/*!
 * \file util_trace.h
 *
 * This is the interface for trace utility
 */

#ifndef UTIL_TRACE_H
#define UTIL_TRACE_H

#include "global_def.h"
#include "libq.h"

/*!
 * \def USE_TRACE_HOOK
 * 
 * Use to enable or disable the trace feature.
 * Set 0 to disable, 1 to eenable
 */
#define USE_TRACE_HOOK              (1)

/*!
 * \def USE_TRACE_CPU_LOAD
 * 
 * Use to enable or disable the CPU load calculation.
 * Set 0 to disable, 1 to eenable
 */
#define USE_TRACE_CPU_LOAD          (1)

/*!
 * \def CPU_USAGE_UPDATE_PERIOD
 * 
 * Number of FreeRTOS ticks between calculation of the CPU load.
 */
#define CPU_USAGE_UPDATE_PERIOD     (10)

/*!
 * \enum CTX_ID_T
 * 
 * Context ID enumeration.  This is used in execution trace feature.
 */
typedef enum
{
    CTX_INVALID = 0,
    CTX_DMA0_ISR,
    CTX_DMA1_ISR,
    CTX_QEI_ISR,
    CTX_U1RX_ISR,
    CTX_U1TX_ISR,
    CTX_ENC_TWO_ISR,

    CTX_TASK_TEST,
    CTX_TASK_SERVO_CURRENT,
    CTX_TASK_SERVO_SPEED,
    CTX_TASK_SERVO_POSITION,
    CTX_TASK_MOTION_PROFILE,
    CTX_TASK_PCINF_RX,
    CTX_TASK_PCINF_DATA_STREAM,
    CTX_MAX_NBR
} CTX_ID_T;

#if((USE_TRACE_HOOK != 0) || (USE_TRACE_CPU_LOAD != 0))
#define HOOK_TRACE_INIT     UtilTrace_Init()
#define HOOK_TRACE_IN(x,y)  UtilTrace_In(x,y)
#define HOOK_TRACE_OUT(y)   UtilTrace_Out(y)
#define HOOK_TRACE_TICK(x)  UtilTrace_Tick(x)
#else
#define HOOK_TRACE_INIT
#define HOOK_TRACE_IN(x,y)
#define HOOK_TRACE_OUT(y)
#define HOOK_TRACE_TICK(x)
#endif

//=================================================================================================
// Public function prototypes.
//=================================================================================================
void UtilTrace_Init(void);
void UtilTrace_In(CTX_ID_T ctxId, BOOLEAN_T isISR);
void UtilTrace_Out(BOOLEAN_T isISR);
void UtilTrace_Tick(UNSIGNED16_T xTickCount);
_Q15 UtilTrace_GetCpuLoad(void);

#endif // End UTIL_TRACE_H

