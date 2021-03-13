/*!
 * \file drv_pwm.h
 */
#ifndef DRV_PWM_H
#define DRV_PWM_H

#include "global_def.h"

/*!
 * \def configPWM_FREQ_HZ
 */
#define configPWM_FREQ_HZ       (20000)

/*!
 * \brief  This function initializes <add here>
 * \param  None
 * \return None
 */
void DrvPwm_Init(void);
void DrvPwm_UpdateDutyCycle(_Q16 q16_duty_cycle);
void DrvPwm_UpdateCommutation(UNSIGNED16_T sectorNumber);

#endif // End DRV_TIMER_H
