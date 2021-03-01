#ifndef PIN_CONFIG_H
#define PIN_CONFIG_H

#include "global_def.h"

#define PIN_DIR_OUT(x)              (x = CLEAR)
#define PIN_DIR_IN(x)               (x = SET)

/*
 * Pin definition Cerebot MC7 Board
 */
// LED Indicator
#define DIR_USER_LED_1              (TRISDbits.TRISD4)
#define USER_LED_1                  (LATDbits.LATD4)
#define DIR_USER_LED_2              (TRISDbits.TRISD5)
#define USER_LED_2                  (LATDbits.LATD5)
#define DIR_USER_LED_3              (TRISDbits.TRISD6)
#define USER_LED_3                  (LATDbits.LATD6)
#define DIR_USER_LED_4              (TRISDbits.TRISD7)
#define USER_LED_4                  (LATDbits.LATD7)
#define LED_ON(x)                   (x = SET)
#define LED_OFF(x)                  (x = CLEAR)

// Push Button
#define DIR_BTN1                    (TRISBbits.TRISB8)
#define BTN1                        (PORTBbits.RB8)
#define DIR_BTN2                    (TRISBbits.TRISB14)
#define BTN2                        (PORTBbits.RB14)

// UART0
#define DIR_U1TX                    (TRISFbits.TRISF3)
#define DIR_U1RX                    (TRISFbits.TRISF2)

// QUADRATURE ENCODER
// ENCODER_ONE
#define DIR_ENC1A                   (TRISBbits.TRISB4)
#define DIR_ENC1B                   (TRISBbits.TRISB5)
// ENCODER_TWO
#define DIR_ENC2A                   (TRISCbits.TRISC13)
#define DIR_ENC2B                   (TRISCbits.TRISC14)

// ANALOG INPUT FOR MOTOR CURRENT AND VOLTAGE
#define DIR_IMON1                   (TRISBbits.TRISB0)
#define DIR_IMON2                   (TRISBbits.TRISB1)
#define DIR_IMON3                   (TRISBbits.TRISB2)
#define DIR_IMON4                   (TRISBbits.TRISB3)
#define DIR_VMON1                   (TRISBbits.TRISB10)
#define DIR_VMON2                   (TRISBbits.TRISB11)
#define DIR_VMON3                   (TRISBbits.TRISB12)
#define DIR_VMON4                   (TRISBbits.TRISB13)

// TRACE PINS
#define DIR_CTX_TRACE1              (TRISDbits.TRISD0)
#define DIR_CTX_TRACE2              (TRISDbits.TRISD1)
#define DIR_CTX_TRACE3              (TRISDbits.TRISD2)
#define DIR_CTX_TRACE4              (TRISDbits.TRISD3)
#define CTX_TRACE_PORT              (PORTD)

#endif /* PIN_CONFIG_H */
