#ifndef FREERTOS_CONFIG_H
#define FREERTOS_CONFIG_H

#include <p33FJ128MC706A.h>
#include "util_trace.h"

#define configDMA0_INTERRUPT_PRIORITY    (configKERNEL_INTERRUPT_PRIORITY)  // uses FreeRTOS API
#define configDMA1_INTERRUPT_PRIORITY    (configKERNEL_INTERRUPT_PRIORITY)  // uses FreeRTOS API

/*-----------------------------------------------------------
 * Application specific definitions.
 *
 * These definitions should be adjusted for your particular hardware and
 * application requirements.
 *
 * THESE PARAMETERS ARE DESCRIBED WITHIN THE 'CONFIGURATION' SECTION OF THE
 * FreeRTOS API DOCUMENTATION AVAILABLE ON THE FreeRTOS.org WEB SITE. 
 *
 * See http://www.freertos.org/a00110.html
 *----------------------------------------------------------*/

#define configUSE_PREEMPTION                    1
#define configUSE_IDLE_HOOK                     0
#define configUSE_TICK_HOOK                     0
#define configTICK_RATE_HZ                      ( ( TickType_t ) 1000 )
#define configCPU_CLOCK_HZ                      ( ( unsigned long ) 40000000 )  /* Fosc / 2 */
#define configMAX_PRIORITIES                    ( 3 )
#define configMINIMAL_STACK_SIZE                ( 160 )
#define configTOTAL_HEAP_SIZE                   ( ( size_t ) 8192 )
#define configMAX_TASK_NAME_LEN                 ( 8 )
#define configUSE_TRACE_FACILITY                0
#define configUSE_16_BIT_TICKS                  1
#define configIDLE_SHOULD_YIELD                 1
#define configUSE_APPLICATION_TASK_TAG          (1)
#define configUSE_MUTEXES                       (1)

/* Co-routine definitions. */
#define configUSE_CO_ROUTINES                   0
#define configMAX_CO_ROUTINE_PRIORITIES         ( 2 )

/* Set the following definitions to 1 to include the API function, or zero
to exclude the API function. */

#define INCLUDE_vTaskPrioritySet                1
#define INCLUDE_uxTaskPriorityGet               1
#define INCLUDE_vTaskDelete                     0
#define INCLUDE_vTaskSuspend                    1
#define INCLUDE_xResumeFromISR                  1
#define INCLUDE_vTaskDelayUntil                 1
#define INCLUDE_vTaskDelay                      1
#define INCLUDE_xTaskGetSchedulerState          1
#define INCLUDE_xTaskGetCurrentTaskHandle       1
#define INCLUDE_uxTaskGetStackHighWaterMark     0
#define INCLUDE_xTaskGetIdleTaskHandle          1
#define INCLUDE_eTaskGetState                   1
#define INCLUDE_xEventGroupSetBitFromISR        1
#define INCLUDE_xTimerPendFunctionCall          0
#define INCLUDE_xTaskAbortDelay                 0
#define INCLUDE_xTaskGetHandle                  0
#define INCLUDE_xTaskResumeFromISR              1

#define configKERNEL_INTERRUPT_PRIORITY         0x01
#define configCHECK_FOR_STACK_OVERFLOW          2

#define traceTASK_SWITCHED_IN()                 HOOK_TRACE_IN((CTX_ID_T)(pxCurrentTCB->pxTaskTag), FALSE)
#define traceTASK_SWITCHED_OUT()                HOOK_TRACE_OUT(FALSE)
#define traceTASK_INCREMENT_TICK(xTickCount)    HOOK_TRACE_TICK(xTickCount)

typedef enum {
    TASK_PRIORITY_IDLE = 0,
    TASK_PRIORITY_LOW,
    TASK_PRIORITY_MEDIUM,
    TASK_PRIORITY_HIGH,

    N_TASK_PRIORITY
} TASK_PRIORITY_T;

#if((N_TASK_PRIORITY - 1) > configMAX_PRIORITIES)
#error "Configuration error: exceeded maximum priority configuration"
#endif


/* Task Priority (HIGHEST - LOWEST) */
#define configTASK_PRIORITY_PCINF_SEND          TASK_PRIORITY_MEDIUM
#define configTASK_PRIORITY_TEST                TASK_PRIORITY_LOW
#define configTASK_PRIORITY_PCINF_RECEIVE       TASK_PRIORITY_LOW

/* Stack Depth/Length Definition */
#define configTASK_STACK_PCINF_RECEIVE          (320)
#define configTASK_STACK_PCINF_SEND             (320)


#endif /* FREERTOS_CONFIG_H */