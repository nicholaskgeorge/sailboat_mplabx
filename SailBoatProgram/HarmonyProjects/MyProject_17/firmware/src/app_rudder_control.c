
#include "app_rudder_control.h"
#include "definitions.h"


APP_RUDDER_CONTROL_DATA app_rudder_controlData;


int desired_rudder_angle = 0;
float rudder_angle = 0;
int rudder_error = 0;
int rudder_allowed_error = 2;
bool rudder_calibrate = false;
bool rudder_startchange = false;
int rudder_duty = 10900;
char testworks[] = "test";
int wait = 500/ portTICK_PERIOD_MS;;
char angles[6]; 

void rudder_encoder(PIO_PIN pin, uintptr_t context)
{   
    if(Rudder_B_signal_Get()==1){
       rudder_angle += 0.18;
    }
    else{
       rudder_angle -= 0.18;
    }
}

void rudder_reset(PIO_PIN pin, uintptr_t context){
    rudder_angle = 0;
    rudder_calibrate = true;
}

void APP_RUDDER_CONTROL_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_rudder_controlData.state = APP_RUDDER_CONTROL_STATE_INIT;
    PIO_PinInterruptCallbackRegister(PIO_PIN_PA10, rudder_encoder, (uintptr_t)NULL);
    PIO_PinInterruptCallbackRegister(PIO_PIN_PB13, rudder_reset, (uintptr_t)NULL);
    PIO_PinInterruptEnable(PIO_PIN_PA10);
    PIO_PinInterruptEnable(PIO_PIN_PB13);
    PWM0_ChannelsStart(PWM_CHANNEL_1_MASK);
    app_rudder_controlData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_1, 0);
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}
void APP_RUDDER_CONTROL_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_rudder_controlData.state )
    {
        /* Application's initial state. */
        case APP_RUDDER_CONTROL_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {
                app_rudder_controlData.state = APP_RUDDER_CONTROL_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_RUDDER_CONTROL_STATE_SERVICE_TASKS:
        {
//            if(rudder_angle != rudder_desired_angle){
//                if(rudder_angle>rudder_desired_angle){
//                    rudder_duty -= 10;
//                }
//                else if (rudder_angle<rudder_desired_angle){
//                    rudder_duty += 10;
//                }
//            }
//            if(rudder_duty > 10970){rudder_duty = 10970;}
//            else if (rudder_duty < 10200){rudder_duty = 10200;}
//            if (DRV_USART_WriteBuffer(app_rudder_controlData.usartHandle, &buffer, sizeof(buffer)) == true){}
            int wait = 2000/ portTICK_PERIOD_MS;
            vTaskDelay(wait);
            PWM0_ChannelDutySet(PWM_CHANNEL_1, 10900);
            vTaskDelay(wait);
            PWM0_ChannelDutySet(PWM_CHANNEL_1, 10600);
            vTaskDelay(wait);
            PWM0_ChannelDutySet(PWM_CHANNEL_1, 10200);
            vTaskDelay(wait);
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
