#include <dsp.h>
#include "FreeRTOS.h"
#include "global_def.h"
#include "util_trace.h"
#include "PinConfig.h"
#include "bldc.h"
#include "drv_adc.h"
#include "drv_pwm.h"

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


volatile UNSIGNED16_T curSector = 0;

/* External variable from drv_adc.c */
extern volatile UNSIGNED16_T adc_one_val[N_ADC_ONE_CHANNEL];
extern volatile UNSIGNED16_T adc_two_val[N_ADC_TWO_CHANNEL];
extern volatile UNSIGNED16_T adc_motor_neutral;


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

BLDC_RET_T BLDC_init(void)
{
    DrvAdc_Init();
    DrvAdc_RegisterAdcOneCallback(bldc_commutation);

    return BLDC_OK;
}
