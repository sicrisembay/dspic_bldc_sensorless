#include <dsp.h>
#include "FreeRTOS.h"
#include "global_def.h"
#include "util_trace.h"
#include "PinConfig.h"
#include "bldc.h"
#include "drv_adc.h"
#include "drv_pwm.h"
#include "project_setting.h"

/*!
 * \def MOTOR_BUS_VOLTAGE
 */
#define MOTOR_BUS_VOLTAGE           (12)

/*!
 * \def MOTOR_BUS_VOLTAGE_ADC_COUNT
 * 
 * MOTOR_BUS_VOLTAGE_ADC_COUNT = (MOTOR_BUS_VOLTAGE * 0.12791 * 2^10) / Vref
 */
#define MOTOR_BUS_VOLTAGE_ADC_COUNT (SIGNED16_T)(MOTOR_BUS_VOLTAGE * 39.69086f)

/*!
 * \def MOTOR_NEUTRAL_ADC_COUNT
 */
#define MOTMOTOR_NEUTRAL_ADC_COUNT  (SIGNED16_T)(MOTOR_BUS_VOLTAGE_ADC_COUNT / 2)

/*!
 * \def COMMUTATION_FLUX_THRESHOLD
 */
#define COMMUTATION_FLUX_THRESHOLD      (200)

#if (USE_TEST_LEVEL == TEST_LEVEL1)
#define TEST_DUTY_CYLE          (0.5f)
#define TEST_LOCK_DURATION_US   (200000UL)  // 200ms
#define TEST_MAX_CMT_US         (100000UL)  // 100ms
#define TEST_MIN_CMT_US         (5000UL)    // 5ms
#define TEST_CMT_RATE           (2)         // 4us per interrupt
/* Variables used for commutation test */
volatile BOOLEAN_T bStartTest = FALSE;
volatile UNSIGNED32_T dlyCnt_us = 0;
volatile UNSIGNED32_T cmtInterval_us = TEST_MAX_CMT_US;
volatile UNSIGNED32_T level1_state = 0;  // 0 - lock, 1 - ramp
volatile UNSIGNED16_T sector = 0;
#else
#endif /* USE_TEST_LEVEL*/

volatile UNSIGNED16_T curSector = 0;
volatile BOOLEAN_T bFirstRun = TRUE;
volatile BOOLEAN_T bemf_is_positive_prev = FALSE;

/* External variable from drv_adc.c */
extern volatile UNSIGNED16_T adc_one_val[N_ADC_ONE_CHANNEL];
extern volatile UNSIGNED16_T adc_two_val[N_ADC_TWO_CHANNEL];
extern volatile UNSIGNED16_T adc_motor_neutral;
extern volatile UNSIGNED32_T last_cmt_ticker;


SIGNED16_T phase_voltage_adc[N_ADC_TWO_CHANNEL];
static UNSIGNED16_T phase_voltage_sign;
static UNSIGNED16_T prev_phase_voltage_sign;

static BOOLEAN_T bFluxCalcEnable = FALSE;
static UNSIGNED32_T fluxCount = 0;

static void bldc_commutation(void)
{
    int i = 0;
    UNSIGNED16_T voltage_sign;

    /*
     * Get polarity/sign of phase voltage with respect to neutral
     */
    for(i = 0; i < N_ADC_TWO_CHANNEL; i++) {
        phase_voltage_adc[i] = (SIGNED16_T)(adc_two_val[i]) - MOTMOTOR_NEUTRAL_ADC_COUNT;
        if(phase_voltage_adc[i] >= 0) {
            phase_voltage_sign |= (UNSIGNED16_T)(1 << i);
        } else {
            phase_voltage_sign &= ~((UNSIGNED16_T)((1 << i)));
        }
    }

    /*
     * Detect zero crossing
     */
    voltage_sign = phase_voltage_sign ^ prev_phase_voltage_sign;
    if(bFluxCalcEnable == FALSE) {
        switch(curSector) {
            case 0:
            case 3: {
                /* Non-fed is phaseC */
                if(voltage_sign & ADC_VMON3_MASK) {
                    bFluxCalcEnable = TRUE;
                    fluxCount = 0;
                }
                break;
            }
            case 1:
            case 4: {
                /* Non-fed is phaseB */
                if(voltage_sign & ADC_VMON2_MASK) {
                    bFluxCalcEnable = TRUE;
                    fluxCount = 0;
                }
                break;
            }
            case 2:
            case 5: {
                /* Non-fed is phaseA */
                if(voltage_sign & ADC_VMON1_MASK) {
                    bFluxCalcEnable = TRUE;
                    fluxCount = 0;
                }
                break;
            }
            default: {
                // Error
                /// TODO
            }
        }
    }
    prev_phase_voltage_sign = phase_voltage_sign;

    /*
     * Flux Measurement (Voltage Accumulation)
     */
    if(bFluxCalcEnable == TRUE) {
        switch(curSector) {
            case 0:
            case 3: {
                /* Non-fed is phaseC */
                fluxCount += (UNSIGNED32_T)(abs(phase_voltage_adc[ADC_VMON3]));
                break;
            }
            case 1:
            case 4: {
                /* Non-fed is phaseB */
                fluxCount += (UNSIGNED32_T)(abs(phase_voltage_adc[ADC_VMON2]));
                break;
            }
            case 2:
            case 5: {
                /* Non-fed is phaseA */
                fluxCount += (UNSIGNED32_T)(abs(phase_voltage_adc[ADC_VMON1]));
                break;
            }
            default: {
                /* Error */
                /// TODO
                break;
            }
        }
        
        /* Check flux threshold */
        if(fluxCount > COMMUTATION_FLUX_THRESHOLD) {
            SIGNED16_T newSector = curSector + 1;
            if(newSector > 5) {
                newSector = 0;
            }
            /* Update Commutation */
            DrvPwm_UpdateCmtSector(newSector);
            bFluxCalcEnable = FALSE;
        }
    }
}

static void bldc_sensorless_execute(void)
{
    BOOLEAN_T bemf_is_positive = FALSE;
    if(adc_one_val[ADC_BEMF] > (adc_motor_neutral/3)) {
        bemf_is_positive = TRUE;
    }

    if(bFirstRun) {
        bemf_is_positive_prev = bemf_is_positive;
        last_cmt_ticker = 0;
        bFirstRun = FALSE;
        return;
    }

#if(USE_TEST_LEVEL == TEST_LEVEL1)
    if(BTN1) {
        /* Starts test */
        bStartTest = TRUE;
    }
    if(BTN2) {
        /* Stops test */
        bStartTest = FALSE;
    }
    if(bStartTest) {
        /*
         * Test01: Update Ramp of commutation interval
         */
        dlyCnt_us += ADC1_ISR_INTERVAL_US;
        switch(level1_state) {
            case 0: {
                // Step1 for setting rotor flux to known state
                DrvPwm_UpdateDutyCycle(_Q16ftoi(TEST_DUTY_CYLE));
                sector = 0;
                DrvPwm_UpdateCmtSector(sector);
                dlyCnt_us = 0;
                level1_state = 1;
                break;
            }
            case 1: {
                // Step2 for setting rotor flux to known state
                if(dlyCnt_us > TEST_LOCK_DURATION_US) {
                    DrvPwm_UpdateDutyCycle(_Q16ftoi(TEST_DUTY_CYLE));
                    sector++;
                    DrvPwm_UpdateCmtSector(sector);
                    dlyCnt_us = 0;
                    level1_state = 2;
                }
                break;
            }
            case 2: {
                if(dlyCnt_us > TEST_LOCK_DURATION_US) {
                    // Done with initial lock
                    cmtInterval_us = TEST_MAX_CMT_US;
                    dlyCnt_us = 0;
                    level1_state = 3;
                }
                break;
            }
            case 3: {
                if(dlyCnt_us > cmtInterval_us) {
                    sector = (sector + 1) % 6;
                    DrvPwm_UpdateCmtSector(sector);
                    cmtInterval_us -= (TEST_CMT_RATE * (dlyCnt_us / ADC1_ISR_INTERVAL_US));
                    if(cmtInterval_us < TEST_MIN_CMT_US) {
                        cmtInterval_us = TEST_MIN_CMT_US;
                    }
                    dlyCnt_us = 0;
                }
                break;
            }
            default: {
                break;
            }
        }

        /*
         * Test02: Detect Back-EMF zero cross
         */
        if(last_cmt_ticker > 2) {
            /* Valid window */
            if(bemf_is_positive_prev != bemf_is_positive) {
                bemf_is_positive_prev = bemf_is_positive;
                /*
                 * Toggle Pin for ease of debug on oscilloscope
                 * NOTE: this pin is shared with Trace Pins
                 */
                PORTDbits.RD3 = bemf_is_positive;
            }
        }
    } else {
        level1_state = 0;
        dlyCnt_us = 0;
        DrvPwm_UpdateDutyCycle(0);
    }
#else
    switch(curSector) {
        default: {
            break;
        }
    }
#endif /* USE_TEST_LEVEL */
}


BLDC_RET_T BLDC_init(void)
{
    bFirstRun = TRUE;
    DrvAdc_Init();
    DrvAdc_RegisterAdcOneCallback(bldc_sensorless_execute);

    return BLDC_OK;
}
