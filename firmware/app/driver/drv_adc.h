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

typedef enum
{
    IMON4,  // Note: Imon4 is first enum as it is connected to ADC1 CH0 and buffer is filled as sequence of conversion (CH0->CH1->CH2->CH3)
    IMON1,
    IMON2,
    IMON3,
    NUM_IMON_CH
}IMON_CH_T;

typedef enum
{
    VMON1 = 0,
    VMON2,
    VMON3,
    VMON4,
    NUM_VMON_CH
}VMON_CH_T;


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
 * ADC2 is used to measure VMON1 (AN10), VMON2 (AN11), VMON3 (AN12), 
 * VMON4 (AN13) using MUXA for sequential sampling on CH0.  ADC2 samples 
 * multiple channels individually in sequence, VMON1, VMON2, VMON3, VMON4.  
 * ADC2 format is 10bit unsigned integer.  ADC2 converter voltage reference is
 * AVdd and AVss.  DMA buffer is allocated 4 words to each 4 analog input and
 * increments DMA address after completion of every 4 samples/conversion. * 
 *
 * \param  None
 * \return None
 */
void DrvAdc_Init(void);
void DrvAdc_SetCurrentControlHandlerOne(TaskHandle_t tskHandle);
UNSIGNED16_T DrvAdc_GetImonAdcValue(IMON_CH_T chIdx);
UNSIGNED16_T DrvAdc_GetVmonAdcValue(VMON_CH_T chIdx);

#endif // End DRV_ADC_H
