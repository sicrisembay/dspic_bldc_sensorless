/*!
 * \file drv_timer.h
 */
#ifndef DRV_TIMER_H
#define DRV_TIMER_H

#include "global_def.h"

#define TIMER_32BIT_RELOAD      ((UNSIGNED32_T)0xFFFFFFFF)
#define TIMER_32BIT_RELOAD_LSW  ((UNSIGNED16_T)(TIMER_32BIT_RELOAD & 0xFFFF))
#define TIMER_32BIT_RELOAD_MSW  ((UNSIGNED16_T)((TIMER_32BIT_RELOAD >> 16) & 0xFFFF))

void DrvTmr_Init(void);
UNSIGNED32_T DrvTmr_GetValue(void);
void DrvTmr_ResetCount(void);

#endif // End DRV_TIMER_H
