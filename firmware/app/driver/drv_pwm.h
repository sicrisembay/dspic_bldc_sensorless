/*!
 * \file drv_pwm.h
 */
#ifndef DRV_PWM_H
#define DRV_PWM_H

#include "global_def.h"

/*!
 * \def configPWM_FREQ_HZ
 */
#define configPWM_FREQ_HZ       (20000U)

/*!
 * \brief  This function initializes <add here>
 * \param  None
 * \return None
 */
void DrvPwm_Init(void);
void DrvPwm_UpdateDutyCycle(_Q16 q16_duty_cycle);
void DrvPwm_UpdateCmtSector(UNSIGNED16_T sectorNumber);
void DrvPwm_UpdateCommutation(void);

#endif // End DRV_TIMER_H
