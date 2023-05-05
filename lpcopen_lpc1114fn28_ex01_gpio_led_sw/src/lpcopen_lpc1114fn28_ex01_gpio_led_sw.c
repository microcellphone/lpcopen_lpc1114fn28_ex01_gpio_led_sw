/*
===============================================================================
 Name        : lpcopen_lpc1114fn28_ex01_gpio_led_sw.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#if defined (__USE_LPCOPEN)
#if defined(NO_BOARD_LIB)
#include "chip.h"
#else
#include "board.h"
#endif
#endif

#include <cr_section_macros.h>

// TODO: insert other include files here
#include "led.h"
#include "sw.h"
#include "my_lpc1114fn28.h"

// TODO: insert other definitions and declarations here

int main(void) {

#if defined (__USE_LPCOPEN)
    // Read clock settings and update SystemCoreClock variable
    SystemCoreClockUpdate();
#if !defined(NO_BOARD_LIB)
    // Set up and initialize all required blocks and
    // functions related to the board hardware
    Board_Init();
    // Set the LED to the state of "On"
    Board_LED_Set(0, true);
#endif
#endif

    // TODO: insert code here
    uint8_t sw;
    bool led;

    SysTick_Config(SystemCoreClock/1000 - 1);
    IOCON_Config_Request();
    LED1_Config_Request();
    SW1_Config_Request();
    led = 0;

    // Force the counter to be placed into memory
    volatile static int i = 0 ;
    // Enter an infinite loop, just incrementing a counter
    while(1) {
    	sw = SW_Status_Read_Request(SW1);
    	if(sw == 0)	led = true;
    	else			led = false;
    	LED_set_request(LED1, led);
    	Delay (500) ;
    	i++ ;
    	// "Dummy" NOP to allow source level single
    	// stepping of tight while() loop
    	__asm volatile ("nop");
    }
    return 0 ;
}
