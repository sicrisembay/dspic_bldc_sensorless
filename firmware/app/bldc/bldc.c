#include <dsp.h>
#include "FreeRTOS.h"
#include "global_def.h"
#include "util_trace.h"
#include "PinConfig.h"
#include "bldc.h"
#include "drv_adc.h"

BLDC_RET_T BLDC_init(void)
{
    DrvAdc_Init();

    return BLDC_OK;
}
