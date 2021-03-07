//=================================================================================================
// DSPIC33FJ128MC706A Configuration Bit Settings
// 'C' source line config statements
//=================================================================================================
// FBS
#pragma config BWRP = WRPROTECT_OFF     // Boot Segment Write Protect (Boot Segment may be written)
#pragma config BSS = NO_FLASH           // Boot Segment Program Flash Code Protection (No Boot program Flash segment)
#pragma config RBS = NO_RAM             // Boot Segment RAM Protection (No Boot RAM)
// FSS
#pragma config SWRP = WRPROTECT_OFF     // Secure Segment Program Write Protect (Secure Segment may be written)
#pragma config SSS = NO_FLASH           // Secure Segment Program Flash Code Protection (No Secure Segment)
#pragma config RSS = NO_RAM             // Secure Segment Data RAM Protection (No Secure RAM)
// FGS
#pragma config GWRP = OFF               // General Code Segment Write Protect (User program memory is not write-protected)
#pragma config GSS = OFF                // General Segment Code Protection (User program memory is not code-protected)
// FOSCSEL
#pragma config FNOSC = PRIPLL           // Oscillator Mode (Primary Oscillator (XT, HS, EC) w/ PLL)
#pragma config IESO = OFF               // Two-speed Oscillator Start-Up Enable (Start up with user-selected oscillator)
// FOSC
#pragma config POSCMD = XT              // Primary Oscillator Source (XT Oscillator Mode)
#pragma config OSCIOFNC = OFF           // OSC2 Pin Function (OSC2 pin has clock out function)
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor (Both Clock Switching and Fail-Safe Clock Monitor are disabled)
// FWDT
#pragma config WDTPOST = PS32768        // Watchdog Timer Postscaler (1:32,768)
#pragma config WDTPRE = PR128           // WDT Prescaler (1:128)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Watchdog Timer in Non-Window mode)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog timer enabled/disabled by user software)
// FPOR
#pragma config FPWRT = PWR128           // POR Timer Value (128ms)
#pragma config LPOL = ON                // Low-side PWM Output Polarity (Active High)
#pragma config HPOL = ON                // Motor Control PWM High Side Polarity bit (PWM module high side output pins have active-high output polarity)
#pragma config PWMPIN = ON              // Motor Control PWM Module Pin Mode bit (PWM module pins controlled by PORT register at device Reset)
// FICD
#pragma config ICS = PGD1               // Comm Channel Select (Communicate on PGC1/EMUC1 and PGD1/EMUD1)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG is Disabled)

#include "FreeRTOS.h"
#include "task.h"

#include "global_def.h"
#include "PinConfig.h"
#include "bldc.h"
#include "util_trace.h"
#include "drv_pwm.h"
#include "drv_uart.h"
#include "pc_interface.h"
#include "drv_timer.h"
#include "drv_adc.h"

/*!
 * \brief  This function initializes the core clock
 * \param  None
 * \return None
 */
static void PrvConfigureClk(void)
{
    // Disable Watch Dog Timer
    RCONbits.SWDTEN=0;
    
    /* The settings below set up the oscillator andPLL for 40 MIPS as 
     **follows: 
     **         Crystal Frequency * (DIVISOR+2) 
     ** Fcy = --------------------------------- 
     **            PLLPOST * (PRESCLR+2) * 4  
     ** Crystal = Defined in UserParms.h 
     ** Fosc   = Crystal * dPLL defined in UserParms.h 
     ** Fcy   = DesiredMIPs 
     */ 
    PLLFBD = (int)(40 - 2); 
    CLKDIVbits.PLLPOST = 0;  // N1=2 
    CLKDIVbits.PLLPRE = 0;   // N2=2 
    __builtin_write_OSCCONH(0x03); 
    __builtin_write_OSCCONL(0x01); 
    while(OSCCONbits.COSC != 0b011); 
    // Wait for PLL to lock 
    while(OSCCONbits.LOCK != 1);
}

static void PrvConfigurePin(void)
{
    // User LED
    PIN_DIR_OUT(DIR_USER_LED_1);
    PIN_DIR_OUT(DIR_USER_LED_2);
    PIN_DIR_OUT(DIR_USER_LED_3);
    PIN_DIR_OUT(DIR_USER_LED_4);
    
    // User Buttons
    AD1PCFGLbits.PCFG8 = 1;     // Digital Pin
    AD2PCFGLbits.PCFG8 = 1;
    AD1PCFGLbits.PCFG14 = 1;    // Digital Pin
    AD2PCFGLbits.PCFG14 = 1;
    PIN_DIR_IN(DIR_BTN1);
    PIN_DIR_IN(DIR_BTN2);
}


static void PrvTest(void *pvParam)
{
    UNSIGNED16_T i = 0;
    UNSIGNED16_T j = 0;
    UNSIGNED16_T sector = 0;
    TickType_t xLastExecutionTime;
    xLastExecutionTime = xTaskGetTickCount();

    vTaskSetApplicationTaskTag(NULL, (void *)CTX_TASK_TEST);
    
    while(1)
    {
        vTaskDelayUntil( &xLastExecutionTime, 1);
        USER_LED_1 = BTN1;
        USER_LED_2 = BTN2;
        if(BTN1) {
            DrvPwm_UpdateDutyCycle((20 * PWM_PERIOD)/100);
        } else if(BTN2) {
            DrvPwm_UpdateDutyCycle((10 * PWM_PERIOD)/100);
        } else {
            DrvPwm_UpdateDutyCycle(0);
        }
        i++;
        if(i >= 1000) {
            i = 0;
            if(USER_LED_4) {
                USER_LED_4 = CLEAR;
            } else {
                USER_LED_4 = SET;
            }
        }
        j++;
        if(j >= 28) {
            j = 0;
            sector++;
            if(sector > 5) {
                sector = 0;
            }
            DrvPwm_UpdateCommutation(sector);
        }
    }
}


int main(void)
{
    PrvConfigureClk();
    PrvConfigurePin();

    HOOK_TRACE_INIT;

    DrvTmr_Init();
    DrvPwm_Init();
    DrvAdc_Init();
    if(DRV_UART_ERR_NONE != DrvUart_Init()) {
        configASSERT(0);
    }
    if(PCINTERFACE_NOERROR != PcInf_Init()) {
        configASSERT(0);
    }

//    BLDC_init();

    xTaskCreate( PrvTest, "Tst", configMINIMAL_STACK_SIZE*2, NULL, configTASK_PRIORITY_TEST, NULL );

    vTaskStartScheduler();

    
    /*
     * It never reach here.
     */
    while(1);

    return 1;
}
