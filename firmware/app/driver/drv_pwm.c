/*!
 * \file drv_pwm.c
 */

#include "FreeRTOS.h"
#include "task.h"

#include "global_def.h"
#include "drv_pwm.h"

/*!
 * \def configPWM_TMR_PRESCALER
 */
#define configPWM_TMR_PRESCALER (1)

/*!
 * \def PWM_PERIOD
 */
#define PWM_PERIOD              (UNSIGNED16_T)((configCPU_CLOCK_HZ/((UNSIGNED32_T)configPWM_FREQ_HZ * configPWM_TMR_PRESCALER *2))-1)

/*!
 * \def DEAD_TIME
 */
#define DEAD_TIME               (4)

/*!
 * \def PWM_MAX_DUTY_VAL
 */
#define PWM_MAX_DUTY_VAL        (UNSIGNED16_T)((configCPU_CLOCK_HZ/((UNSIGNED32_T)configPWM_FREQ_HZ * configPWM_TMR_PRESCALER))-2*DEAD_TIME) // TODO: Investigate the MAX PWM.

#define PWM_MAX_DUTY_VAL_Q16    ((SIGNED32_T)(PWM_MAX_DUTY_VAL) << 16)

//=================================================================================================
// Private definitions.
//=================================================================================================
static BOOLEAN_T bInit = FALSE;
static UNSIGNED16_T u16_dutyCycle = 0;

/* External variable from bldc.c */
extern volatile UNSIGNED16_T curSector;

//=================================================================================================
// Private member declarations.
//=================================================================================================
volatile BOOLEAN_T b_positive_duty_cycle = TRUE;

//=================================================================================================
// Public / Internal member external declarations.
//=================================================================================================

//=================================================================================================
// Private function prototypes.
//=================================================================================================

//=================================================================================================
// - Public function implementations.
//=================================================================================================

/*
 * PWM1 : WindingA
 * PWM2 : Winding B
 * PWM3 : Winding C
 */
void DrvPwm_Init(void)
{
    if(bInit != TRUE) {
        /*
         * Initialize PWM Time Base
         */
        P1TCONbits.PTSIDL = 0;          // PWM time base runs in CPU Idle mode
        P1TCONbits.PTOPS = 0;           // PWM time base output Post scaler is 1:1
#if (configPWM_TMR_PRESCALER == 1)
        P1TCONbits.PTCKPS = 0;
#else
#error "PWM Timer prescaler must be 1"
#endif
        P1TCONbits.PTMOD  = 2;          // Continuous UP/DOWN Count mode    
        P1TPERbits.PTPER = PWM_PERIOD;  // Time base Period Value

        /*
         * PWM Control Register 1
         */
        PWM1CON1bits.PMOD1 = 0;         // Complementary Output Mode
        PWM1CON1bits.PMOD2 = 0;         // Complementary Output Mode
        PWM1CON1bits.PMOD3 = 0;         // Complementary Output Mode
        PWM1CON1bits.PEN1L = SET;       // Pin is enabled for PWM Output
        PWM1CON1bits.PEN1H = SET;       // Pin is enabled for PWM Output
        PWM1CON1bits.PEN2L = SET;       // Pin is enabled for PWM Output
        PWM1CON1bits.PEN2H = SET;       // Pin is enabled for PWM Output
        PWM1CON1bits.PEN3L = SET;       // Pin is enabled for PWM Output
        PWM1CON1bits.PEN3H = SET;       // Pin is enabled for PWM Output

        /*
         * PWM Control Register 2
         */
        PWM1CON2bits.SEVOPS = 0;        // Event Trigger Post scaler is 1:1 (Trigger ADC at configPWM_FREQ_HZ)
        PWM1CON2bits.IUE = 0;           // Updates are synchronized to the PWM time base
        PWM1CON2bits.OSYNC = 1;         // Output overrides are synchronized to the PWM time base
        PWM1CON2bits.UDIS = 0;          // Updates from duty cycle and period buffer are enabled

        /*
         * Dead time Setting
         */
        // Dead Time Unit
        P1DTCON1bits.DTBPS = 0;
        P1DTCON1bits.DTB   = DEAD_TIME; // 25ns * DTB = 0.1us deadtime
        P1DTCON1bits.DTAPS = 0;
        P1DTCON1bits.DTA   = DEAD_TIME; // 25ns * DTA = 0.1us deadtime
        // Dead time before High side output is driven high is based on Dead Time UnitA
        P1DTCON2bits.DTS1A = CLEAR;
        P1DTCON2bits.DTS2A = CLEAR;
        P1DTCON2bits.DTS3A = CLEAR;
        // Dead time before Low side output is driven high is based on Dead Time UnitB
        P1DTCON2bits.DTS1I = SET;
        P1DTCON2bits.DTS2I = SET;
        P1DTCON2bits.DTS3I = SET;

        /*
         * Fault Control
         */
        // Fault Control B (unused)
        P1FLTBCON = 0;
        // Fault Control A
        // All switches are driven Inactive
        P1FLTACONbits.FAOV1H = CLEAR;
        P1FLTACONbits.FAOV2H = CLEAR;
        P1FLTACONbits.FAOV3H = CLEAR;
        P1FLTACONbits.FAOV4H = CLEAR;
        P1FLTACONbits.FAOV1L = CLEAR;
        P1FLTACONbits.FAOV2L = CLEAR;
        P1FLTACONbits.FAOV3L = CLEAR;
        P1FLTACONbits.FAOV4L = CLEAR;
        // Fault latches (need to clear fault flag to exit fault condition)
        P1FLTACONbits.FLTAM  = CLEAR;
        //P1FLTACONbits.FAEN1;            // PWM pin pair is controlled by fault pin
        //P1FLTACONbits.FAEN2;            // PWM pin pair is controlled by fault pin
        //P1FLTACONbits.FAEN3;            // PWM pin pair is controlled by fault pin
        //P1FLTACONbits.FAEN4;            // PWM pin pair is controlled by fault pin

        /*
         * PWM Output Override Control
         */
        // PWMxH and PWMxL pin is controlled by PWM Generator
        P1OVDCONbits.POVD1L = 1;
        P1OVDCONbits.POVD1H = 1;
        P1OVDCONbits.POVD2L = 1;
        P1OVDCONbits.POVD2H = 1;
        P1OVDCONbits.POVD3L = 1;
        P1OVDCONbits.POVD3H = 1;
        // Override states (High side = INACTIVE; Low side = ACTIVE)
        P1OVDCONbits.POUT1L = INACTIVE;
        P1OVDCONbits.POUT2L = INACTIVE;
        P1OVDCONbits.POUT3L = INACTIVE;
        P1OVDCONbits.POUT1H = INACTIVE;
        P1OVDCONbits.POUT2H = INACTIVE;
        P1OVDCONbits.POUT3H = INACTIVE;

        /*
         * ADC Event Trigger
         */
        P1SECMPbits.SEVTDIR = CLEAR;    // Special Event Trigger will occur when the PWM time base is counting up
        P1SECMPbits.SEVTCMP = 10;       // Special Event Compare Value
                                        // offset of 10 counts (0.25us)
                                        // Minimum duty cycle is 0.25us * 2 / 50us = 1%

        /*
         * PWM Duty Cycle
         */
        P1DC1 = 0;
        P1DC2 = 0;
        P1DC3 = 0;

        /*
         * Initialization done
         */
        bInit = TRUE;

        // Enable
        P1TCONbits.PTEN = SET;
    }
}

void DrvPwm_UpdateDutyCycle(_Q16 q16_duty_cycle)
{
    UNSIGNED16_T u16_temp_val = 0;
    if(q16_duty_cycle >= 0) {
        b_positive_duty_cycle = TRUE;
    } else {
        b_positive_duty_cycle = FALSE;
        q16_duty_cycle = _Q16neg(q16_duty_cycle);
    }
    u16_temp_val = (UNSIGNED16_T)(_Q16mpy(q16_duty_cycle, PWM_MAX_DUTY_VAL_Q16) >> 16);
    if(u16_temp_val > PWM_MAX_DUTY_VAL) {
        u16_temp_val = PWM_MAX_DUTY_VAL;
    }
    u16_dutyCycle = u16_temp_val;
}

void DrvPwm_UpdateCmtSector(UNSIGNED16_T sectorNumber)
{
    curSector = sectorNumber;
}

void DrvPwm_UpdateCommutation(void)
{
    P1DC1 = u16_dutyCycle;
    P1DC2 = u16_dutyCycle;
    P1DC3 = u16_dutyCycle;

    switch(curSector) {
        case 0: {
            /* Winding A */
            P1OVDCONbits.POUT1H = ON;
            P1OVDCONbits.POUT1L = OFF;
            P1OVDCONbits.POVD1H = 1;    /* PWM */
            P1OVDCONbits.POVD1L = 0;
            /* Winding B */
            P1OVDCONbits.POUT2H = OFF;
            P1OVDCONbits.POUT2L = ON;
            P1OVDCONbits.POVD2L = 0;
            P1OVDCONbits.POVD2H = 0;
            /* Winding C (Hi-Z) */
            P1OVDCONbits.POUT3H = OFF;
            P1OVDCONbits.POUT3L = OFF;
            P1OVDCONbits.POVD3L = 0;
            P1OVDCONbits.POVD3H = 0;
            break;
        }
        case 1: {
            /* Winding A */
            P1OVDCONbits.POUT1H = ON;
            P1OVDCONbits.POUT1L = OFF;
            P1OVDCONbits.POVD1H = 1;    /* PWM */
            P1OVDCONbits.POVD1L = 0;
            /* Winding B */
            P1OVDCONbits.POUT2H = OFF;
            P1OVDCONbits.POUT2L = OFF;
            P1OVDCONbits.POVD2H = 0;
            P1OVDCONbits.POVD2L = 0;
            /* Winding C */
            P1OVDCONbits.POUT3H = OFF;
            P1OVDCONbits.POUT3L = ON;
            P1OVDCONbits.POVD3H = 0;
            P1OVDCONbits.POVD3L = 0;
            break;
        }
        case 2: {
            /* Winding A */
            P1OVDCONbits.POUT1H = OFF;
            P1OVDCONbits.POUT1L = OFF;
            P1OVDCONbits.POVD1H = 0;
            P1OVDCONbits.POVD1L = 0;
            /* Winding B */
            P1OVDCONbits.POUT2H = ON;
            P1OVDCONbits.POUT2L = OFF;
            P1OVDCONbits.POVD2H = 1;    /* PWM */
            P1OVDCONbits.POVD2L = 0;
            /* Winding C */
            P1OVDCONbits.POUT3H = OFF;
            P1OVDCONbits.POUT3L = ON;
            P1OVDCONbits.POVD3H = 0;
            P1OVDCONbits.POVD3L = 0;
            break;
        }
        case 3: {
            /* Winding A */
            P1OVDCONbits.POUT1H = OFF;
            P1OVDCONbits.POUT1L = ON;
            P1OVDCONbits.POVD1H = 0;
            P1OVDCONbits.POVD1L = 0;
            /* Winding B */
            P1OVDCONbits.POUT2H = ON;
            P1OVDCONbits.POUT2L = OFF;
            P1OVDCONbits.POVD2H = 1;    /* PWM */
            P1OVDCONbits.POVD2L = 0;
            /* Winding C */
            P1OVDCONbits.POUT3H = OFF;
            P1OVDCONbits.POUT3L = OFF;
            P1OVDCONbits.POVD3H = 0;
            P1OVDCONbits.POVD3L = 0;
            break;
        }
        case 4: {
            /* Winding A */
            P1OVDCONbits.POUT1H = OFF;
            P1OVDCONbits.POUT1L = ON;
            P1OVDCONbits.POVD1H = 0;
            P1OVDCONbits.POVD1L = 0;
            /* Winding B */
            P1OVDCONbits.POUT2H = OFF;
            P1OVDCONbits.POUT2L = OFF;
            P1OVDCONbits.POVD2H = 0;
            P1OVDCONbits.POVD2L = 0;
            /* Winding C */
            P1OVDCONbits.POUT3H = ON;
            P1OVDCONbits.POUT3L = OFF;
            P1OVDCONbits.POVD3H = 1;    /* PWM */
            P1OVDCONbits.POVD3L = 0;
            break;
        }
        case 5: {
            /* Winding A*/
            P1OVDCONbits.POUT1H = OFF;
            P1OVDCONbits.POUT1L = OFF;
            P1OVDCONbits.POVD1H = 0;
            P1OVDCONbits.POVD1L = 0;
            /* Winding B */
            P1OVDCONbits.POUT2H = OFF;
            P1OVDCONbits.POUT2L = ON;
            P1OVDCONbits.POVD2H = 0;
            P1OVDCONbits.POVD2L = 0;
            /* Winding C */
            P1OVDCONbits.POUT3H = ON;
            P1OVDCONbits.POUT3L = OFF;
            P1OVDCONbits.POVD3H = 1;    /* PWM */
            P1OVDCONbits.POVD3L = 0;
            break;
        }
        default: {
            /*
             * Invalid sector
             * Override all pins to inactive
             */
            P1DC1 = 0;
            P1DC2  = 0;
            P1DC3 = 0;
            P1OVDCONbits.POVD1L = 0;
            P1OVDCONbits.POVD1H = 0;
            P1OVDCONbits.POVD2L = 0;
            P1OVDCONbits.POVD2H = 0;
            P1OVDCONbits.POVD3L = 0;
            P1OVDCONbits.POVD3H = 0;

            P1OVDCONbits.POUT1L = INACTIVE;
            P1OVDCONbits.POUT2L = INACTIVE;
            P1OVDCONbits.POUT3L = INACTIVE;
            P1OVDCONbits.POUT1H = INACTIVE;
            P1OVDCONbits.POUT2H = INACTIVE;
            P1OVDCONbits.POUT3H = INACTIVE;
            break;
        }
    }
}
