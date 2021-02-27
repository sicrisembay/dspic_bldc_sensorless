
#include "FreeRTOS.h"
#include "task.h"

void vApplicationIdleHook( void )
{
    /// TODO: implement
}

void vApplicationStackOverflowHook( TaskHandle_t xTask, char * pcTaskName )
{
    (void)xTask;
    (void)pcTaskName;

    while(1) {
        /// TODO: handle
    }
}