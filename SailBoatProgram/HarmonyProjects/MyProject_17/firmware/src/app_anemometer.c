 #include "app_anemometer.h"
#include "anemometer.h"
#include "app_mast_control.h"
#include <math.h>

APP_ANEMOMETER_DATA app_anemometerData;
Anemometer_INFO* Anemometer_info;
uint8_t Anemometer_values[128];

int delay;
int dir = 0;
float avg = 0;
int count = 0;
int avnum = 2;
char sdir[7];
float wind_angle=0;
int u_vector = 0;
char su_vector[7];

void APP_ANEMOMETER_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_anemometerData.state = APP_ANEMOMETER_STATE_INIT;
}

void APP_ANEMOMETER_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( app_anemometerData.state )
    {
        /* Application's initial state. */
        case APP_ANEMOMETER_STATE_INIT:
        {
            bool appInitialized = true;
            app_anemometerData.usartHandleSEND = DRV_USART_Open(DRV_USART_INDEX_1, 0);
            app_anemometerData.usartHandleREC = DRV_USART_Open(DRV_USART_INDEX_1, 0);
            if (appInitialized)
            {
                app_anemometerData.state = APP_ANEMOMETER_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_ANEMOMETER_STATE_SERVICE_TASKS:
        {
            
            sdir[5]='\r';
            sdir[6]='\n';
            while(1){
                if (DRV_USART_ReadBuffer(app_anemometerData.usartHandleREC, &Anemometer_values, sizeof(Anemometer_values)) == true){
                    Anem_Process(Anemometer_info,(char*)Anemometer_values); // parse it into fields
                    u_vector = Anemometer_info->boatu;
                    strcpy(su_vector, "     \n");
                    itoa(u_vector, su_vector, 10);
                    if (DRV_USART_WriteBuffer(app_anemometerData.usartHandleSEND, Anemometer_values, sizeof(Anemometer_values)) == true){
                        delay = 200 / portTICK_PERIOD_MS;
                        vTaskDelay(delay);
                    }
                }
                /*
                 *Things don't change very fast when sailing so we don't need to
                 * be reading instantaneously. This blocks the process for 100 ms
                 * to create a delay before the next read.
                 */
                delay = 300 / portTICK_PERIOD_MS;
                vTaskDelay(delay);
                
                dir = Anemometer_info->direction;
                if(dir>180){
                    dir = 360-dir;
                }
                else if (dir<180){
                    dir*=-1;
                }
                if(Anemometer_info->speed <2.28){
                    Anemometer_info->wind_present = false;
                }
                else{
                    Anemometer_info->wind_present = true;
                }
                desired_mast_angle = -(dir-45);
            }
            break;
        }
        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}
