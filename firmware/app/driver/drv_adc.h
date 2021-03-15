/*!
 * \file drv_adc.h
 */
#ifndef DRV_ADC_H
#define DRV_ADC_H

#include <dsp.h>
#include "global_def.h"
#include "FreeRTOS.h"
#include "task.h"

#ifndef configDMA0_INTERRUPT_PRIORITY
#define configDMA0_INTERRUPT_PRIORITY    (configKERNEL_INTERRUPT_PRIORITY)
#endif

#ifndef configDMA1_INTERRUPT_PRIORITY
#define configDMA1_INTERRUPT_PRIORITY    (configKERNEL_INTERRUPT_PRIORITY)
#endif

/*!
 * \def ADC1_SAMPLES_PER_INT
 * Number of samples per channel in every interrupt
 */
#define ADC1_SAMPLES_PER_INT        (2)

/*!
 * \def ADC1_ISR_INTERVAL_US
 * ISR period of ADC1 in microseconds
 */
#define ADC1_ISR_INTERVAL_US        ((1000000U * ADC1_SAMPLES_PER_INT) / configPWM_FREQ_HZ)

typedef void (*adc_callback)(void);

typedef enum
{
    ADC_BEMF = 0,   // Note: ADC1 CH0 can connect to VMON1(AN10), VMON2(AN11), VMON3 (AN12)
                    // ADC CH0 is connected to non-driven phase (determined by commutation sector)
    ADC_IMON1,
    ADC_IMON2,
    ADC_IMON3,
    N_ADC_ONE_CHANNEL
} ADC_ONE_CHANNEL_T;

typedef enum
{
    ADC_VMON1 = 0,
    ADC_VMON2,
    ADC_VMON3,
    N_ADC_TWO_CHANNEL
} ADC_TWO_CHANNEL_T;

#define ADC_VMON1_MASK      (1 << ADC_VMON1)
#define ADC_VMON2_MASK      (1 << ADC_VMON2)
#define ADC_VMON3_MASK      (1 << ADC_VMON3)


/*!
 * \brief  This function initializes the ADC peripheral.
 *
 * There are two ADC's.  ADC1 is used to measure IMON1 (AN0), IMON2 (AN1),
 * IMON3 (AN2), IMON4 (AN3) using MUXA for simultaneous sampling (CH0, CH1,CH2,
 * CH3).  ADC1 format is 10bit signed fractional (1.15 Fixed point or Q15).
 * ADC2 converter voltage reference is AVdd and AVss.  DMA buffers are written
 * in order of conversion CH0, CH1, CH2, CH3.  and increments DMA address after
 * completion of every 4 samples/conversion. DMA buffer is allocated 4 words 
 * to each 4 analog input.
 * 
 * ADC2 is used to measure VMON1 (AN10), VMON2 (AN11), VMON3 (AN12) 
 * using MUXA for sequential sampling on CH0.  ADC2 samples 
 * multiple channels individually in sequence, VMON1, VMON2, VMON3.  
 * ADC2 format is 10bit unsigned integer.  ADC2 converter voltage reference is
 * AVdd and AVss.  DMA buffer is allocated 2 words to each 3 analog input and
 * increments DMA address after completion of every 3 samples/conversion. * 
 *
 * \param  None
 * \return None
 */
void DrvAdc_Init(void);

void DrvAdc_RegisterAdcOneCallback(adc_callback fcb);
UNSIGNED16_T DrvAdc_GetAdcOneValue(ADC_ONE_CHANNEL_T chIdx);
UNSIGNED16_T DrvAdc_GetAdcTwoValue(ADC_TWO_CHANNEL_T chIdx);
UNSIGNED16_T DrvAdc_GetAdcPhaseVoltageNeutral(void);

#endif // End DRV_ADC_H
