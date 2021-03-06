/*!
 * \file drv_timer.c
 */

#include "FreeRTOS.h"
#include "task.h"

#include "global_def.h"
#include "drv_timer.h"

//=================================================================================================
// Private definitions.
//=================================================================================================

//=================================================================================================
// Private member declarations.
//=================================================================================================

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
/// \brief  This function initializes the 32-bit free running high resolution timer (25ns
///         per timer count).  Uses Timer2 and Timer3 in 32-bit Timer mode.
/// \param  None
/// \return None
//=================================================================================================
void DrvTmr_Init(void)
{
    // Initialization code for 32-bit timer mode
    T3CONbits.TON = 0;              // Stop any 16-bit Timer3 operation
    T2CONbits.TON = 0;              // Stop any 16/32-bit Timer2 operation
    T2CONbits.T32 = 1;              // Enable 32-bit Timer mode
    T2CONbits.TCS = 0;              // Select internal instruction cycle clock
    T2CONbits.TGATE = 0;            // Disable Gated Timer mode
    T2CONbits.TCKPS = 0b00;         // Select 1:1 Prescaler
    TMR3 = 0x00;                    // Clear 32-bit Timer (msw)
    TMR2 = 0x00;                    // Clear 32-bit Timer (lsw)
    PR3 = TIMER_32BIT_RELOAD_MSW;   // Load 32-bit period value (msw)
    PR2 = TIMER_32BIT_RELOAD_LSW;   // Load 32-bit period value (lsw)
    IPC2bits.T3IP = 0x01;           // Set Timer3 Interrupt Priority Level
    IFS0bits.T3IF = 0;              // Clear Timer3 Interrupt Flag
    IEC0bits.T3IE = 1;              // Enable Timer3 interrupt
    T2CONbits.TON = 1;              // Start 32-bit Timer
}

//=================================================================================================
/// \brief  This function reads the 32-bit timer count value.
/// \param  None
/// \return 32-bit timer count value.
//=================================================================================================
UNSIGNED32_T DrvTmr_GetValue(void)
{
    UNSIGNED32_T msw = 0;
    UNSIGNED32_T lsw = 0;

    lsw = TMR2;     // Read least significant word from TypeB timer register
    msw = TMR3HLD;  // Read most significant word from TypeC timer holding register

    return((msw<<16) | (lsw));
}


//=================================================================================================
/// \brief  Resets the 32-bit timer count without stopping the 32-bit timer
/// \param  None
/// \return None
//=================================================================================================
void DrvTmr_ResetCount(void)
{
    TMR3HLD = 0;
    TMR2 = 0;
}

//=================================================================================================
// Private function implementations.
//=================================================================================================

//=================================================================================================
/// \brief  Interrupt Service Routine for 32-bit Timer overflow event.
/// \param  None
/// \return None
//=================================================================================================
void __attribute__((__interrupt__, no_auto_psv)) _T3Interrupt(void)
{
    IFS0bits.T3IF = 0; // Clear Timer3 Interrupt Flag
}
