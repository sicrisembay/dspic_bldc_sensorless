/*!
 * \file util_trace.c
 */
// Scheduler includes
#include "FreeRTOS.h"
#include "util_trace.h"
#include "PinConfig.h"
#include "task.h"
#include "drv_timer.h"

static BOOLEAN_T HookInitDone = FALSE;
#if(USE_TRACE_HOOK != 0)
volatile CTX_ID_T PrevTraceID[CTX_MAX_NBR];
volatile CTX_ID_T CurrentTraceID;
#endif

#if(USE_TRACE_CPU_LOAD != 0)
volatile UNSIGNED32_T IdleTaskSwitchINtick;
volatile UNSIGNED32_T IdleTaskSwitchOUTtick;
volatile UNSIGNED32_T IdleTaskCummulativeTick;
volatile UNSIGNED32_T CpuUsageTickStart;
volatile UNSIGNED16_T CpuUsageUpdateDly;
volatile _Q15 Q15_CpuLoad;
#endif

//=================================================================================================
// Public / Internal member external declarations.
//=================================================================================================

//=================================================================================================
// Private function prototypes.
//=================================================================================================

//=================================================================================================
// - Public function implementations.
//=================================================================================================

//=================================================================================================
/// \brief  None
/// \param  None
/// \return None
//=================================================================================================
void UtilTrace_Init(void)
{
#if(USE_TRACE_HOOK != 0)
    PIN_DIR_OUT(DIR_CTX_TRACE1);
    PIN_DIR_OUT(DIR_CTX_TRACE2);
    PIN_DIR_OUT(DIR_CTX_TRACE3);
    PIN_DIR_OUT(DIR_CTX_TRACE4);

    CurrentTraceID = CTX_INVALID;
    PORTD = (PORTD & 0xFFF0) | CurrentTraceID;
#endif
    
#if(USE_TRACE_CPU_LOAD != 0)
    IdleTaskSwitchINtick = 0;
    IdleTaskSwitchOUTtick = 0;
    IdleTaskCummulativeTick = 0;
    CpuUsageUpdateDly = 0;
    Q15_CpuLoad = 0;
#endif
    HookInitDone = TRUE;
}


//=================================================================================================
/// \brief  None
/// \param  None
/// \return None
//=================================================================================================
void UtilTrace_In(CTX_ID_T ctxId, BOOLEAN_T isISR)
{
    if(FALSE == HookInitDone)
    {
        return;
    }
    
#if(USE_TRACE_HOOK != 0)
    // Start of Critical Section
    asm volatile("disi #0x3FFF");

    // Save Current ID
    PrevTraceID[ctxId] = PORTD & 0xF;

    // Set ctx id and IO
    CurrentTraceID = ctxId;
    PORTD = (PORTD & 0xFFF0) | (CurrentTraceID & 0xF);

    asm volatile("disi #0");
    // End of Critical Section
#endif

#if(USE_TRACE_CPU_LOAD != 0)
    if(isISR == FALSE)
    {
        // Called from FreeRTOS task switch in hook
        
        if(xTaskGetCurrentTaskHandle() == xTaskGetIdleTaskHandle())
        {
            // Idle task is switched in, record timestamp that will be used for
            // CPU usage calculation.
            IdleTaskSwitchINtick = DrvTmr_GetValue();
            // Initialize switch out timestamp
            IdleTaskSwitchOUTtick = IdleTaskSwitchINtick;
        }
    }
    else
    {
        // Explicitly called from ISR
        
        if(xTaskGetCurrentTaskHandle() == xTaskGetIdleTaskHandle())
        {
            // Idle task is not yet switched out during ISR.  It is only switched
            // out when taskYIELD is explicitly called in the ISR.
            // This is inside the ISR context and not inside the Idle task context.
            IdleTaskSwitchOUTtick = DrvTmr_GetValue();
            if(IdleTaskSwitchOUTtick > IdleTaskSwitchINtick)
            {
                IdleTaskCummulativeTick += (IdleTaskSwitchOUTtick - IdleTaskSwitchINtick);
            }
            else
            {
                IdleTaskCummulativeTick += (TIMER_32BIT_RELOAD - IdleTaskSwitchINtick) + 
                                            IdleTaskSwitchOUTtick + 1;
            }
        }
    }
#endif
}


//=================================================================================================
/// \brief  None
/// \param  None
/// \return None
//=================================================================================================
void UtilTrace_Out(BOOLEAN_T isISR)
{
    if(FALSE == HookInitDone)
    {
        return;
    }
#if(USE_TRACE_HOOK != 0)
    // Start of Critical Section
    asm volatile("disi #0x3FFF");

    // Load the previous ID
    CurrentTraceID = PrevTraceID[CurrentTraceID];
    // Set IO
    PORTD = (PORTD & 0xFFF0) | (CurrentTraceID & 0xF);

    asm volatile("disi #0");
    // End of Critical Section
#endif
    
#if(USE_TRACE_CPU_LOAD != 0)
    if(isISR == FALSE)
    {
        // Called from FreeRTOS task switch out hook
        
        if(xTaskGetCurrentTaskHandle() == xTaskGetIdleTaskHandle())
        {
            // Idle task is about to be switched out.
            IdleTaskSwitchOUTtick = DrvTmr_GetValue();
            if(IdleTaskSwitchOUTtick > IdleTaskSwitchINtick)
            {
                IdleTaskCummulativeTick += (IdleTaskSwitchOUTtick - IdleTaskSwitchINtick);
            }
            else
            {
                IdleTaskCummulativeTick += (TIMER_32BIT_RELOAD - IdleTaskSwitchINtick) + 
                                            IdleTaskSwitchOUTtick + 1;
            }
        }
    }
    else
    {
        // Explicitly called from ISR
        
        // ISR is about to finish and the interrupted context is the idle task.
        if(xTaskGetCurrentTaskHandle() == xTaskGetIdleTaskHandle())
        {
            IdleTaskSwitchINtick = DrvTmr_GetValue();
            // Initialize switch out timestamp
            IdleTaskSwitchOUTtick = IdleTaskSwitchINtick;
        }
    }
#endif
}


//=================================================================================================
/// \brief  None
/// \param  None
/// \return None
//=================================================================================================
void UtilTrace_Tick(UNSIGNED16_T xTickCount)
{
#if(USE_TRACE_CPU_LOAD != 0)
    UNSIGNED32_T u32_cpuTickInterval = 0;
    UNSIGNED32_T u32_currentTmrTick = 0;
    
    (TickType_t)xTickCount; // unused variable
    
    if(FALSE == HookInitDone)
    {
        return;
    }
    else
    {
        CpuUsageUpdateDly++;
        if(CpuUsageUpdateDly >= CPU_USAGE_UPDATE_PERIOD)
        {
            CpuUsageUpdateDly = 0;
            
            // Calculate Update Interval Ticks
            u32_currentTmrTick = DrvTmr_GetValue();
            if(u32_currentTmrTick > CpuUsageTickStart)
            {
                u32_cpuTickInterval = u32_currentTmrTick - CpuUsageTickStart;
            }
            else
            {
                u32_cpuTickInterval = (TIMER_32BIT_RELOAD - CpuUsageTickStart) + u32_currentTmrTick + 1;
            }
            
            // Calculate CPU load (Q1.15 Fixed Point Format)
            if(u32_cpuTickInterval != 0)
            {
                Q15_CpuLoad = (((UNSIGNED32_T)(u32_cpuTickInterval - IdleTaskCummulativeTick)) << 15) /
                        u32_cpuTickInterval;
            }
            
            CpuUsageTickStart = DrvTmr_GetValue();
            IdleTaskCummulativeTick = 0;
        }
    }
#else
    (TickType_t)xTickCount; // unused variable
#endif
}


//=================================================================================================
/// \brief  None
/// \param  None
/// \return None
//=================================================================================================
_Q15 UtilTrace_GetCpuLoad(void)
{
#if(USE_TRACE_CPU_LOAD != 0)
    return(Q15_CpuLoad);
#else
    return(0);
#endif
}

//=================================================================================================
// Private function implementations.
//=================================================================================================


