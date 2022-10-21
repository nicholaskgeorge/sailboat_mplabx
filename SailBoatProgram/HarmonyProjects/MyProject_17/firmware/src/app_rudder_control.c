
#include "app_rudder_control.h"
#include "definitions.h"


APP_RUDDER_CONTROL_DATA app_rudder_controlData;

int desired_rudder_angle = 0;
float rudder_angle = 0;
int rudder_error = 0;
int rudder_allowed_error = 1;
bool rudder_calibrated = false;
bool rudder_startchange = false;
int rudder_duty = 10600;
int wait = 500/ portTICK_PERIOD_MS;;
char angles[6]; 
int pwm_min = 11200;
int pwm_max = 10600;
bool jitter = true;
void rudder_encoder(PIO_PIN pin, uintptr_t context)
{   
    //The encoder rudder encoder has 384 ticks per revolution.
    //This means each tick has 360/384 = 0.18 degrees
    if(Rudder_B_signal_Get()==1){
       rudder_angle += 0.18;
    }
    else{
       rudder_angle -= 0.18;
    }
}

void rudder_reset(PIO_PIN pin, uintptr_t context){
    rudder_angle = 0;
    rudder_calibrated = true;
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
//    app_rudder_controlData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_1, 0);
    PWM0_ChannelDutySet(PWM_CHANNEL_1, rudder_duty);
    //putting a delay here produces a catastrophic error. DONT DO IT.
    //vTaskDelay(1000/ portTICK_PERIOD_MS);
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
//          vTaskDelay(2000/ portTICK_PERIOD_MS);
          while(!rudder_calibrated){
              rudder_duty += 10;
              PWM0_ChannelDutySet(PWM_CHANNEL_1, rudder_duty);
              vTaskDelay(100/ portTICK_PERIOD_MS);
          }
          app_rudder_controlData.state = APP_RUDDER_CONTROL_STATE_SERVICE_TASKS;
          break;
        }

        case APP_RUDDER_CONTROL_STATE_SERVICE_TASKS:
        {
            desired_rudder_angle = 15;
            
            if (desired_rudder_angle>15){
                desired_rudder_angle=15;
            }
            else if(desired_rudder_angle<-15){
                desired_rudder_angle = -15;
            }
                
            rudder_error = desired_rudder_angle-(int)rudder_angle;
            if(abs(rudder_error)>rudder_allowed_error){
                jitter = true;
                if(rudder_angle>desired_rudder_angle){
                    rudder_duty += 10;
                }
                else if (rudder_angle<desired_rudder_angle){
                    rudder_duty -= 10;
                }
                vTaskDelay(200/ portTICK_PERIOD_MS);
            }
            //We noticed that sometimes when the servo reaches the desired angle
            //it draws a lot of current and needs a little nudge to stop it. This
            //simulates that nudge
            else if (jitter == true){
                PWM0_ChannelDutySet(PWM_CHANNEL_1, rudder_duty+20);
                vTaskDelay(1500/ portTICK_PERIOD_MS);
                PWM0_ChannelDutySet(PWM_CHANNEL_1, rudder_duty-20);
                vTaskDelay(1500/ portTICK_PERIOD_MS);
                jitter = false;
            }
            if(rudder_duty > pwm_min){rudder_duty = pwm_min;}
            else if (rudder_duty < pwm_max){rudder_duty = pwm_max;}
            PWM0_ChannelDutySet(PWM_CHANNEL_1, rudder_duty);
            itoa(rudder_angle,angles,10);
//            asm(" BKPT ");
//            if (DRV_USART_WriteBuffer(app_rudder_controlData.usartHandle, &angles, sizeof(angles)) == true){}
//            int wait = 1000/ portTICK_PERIOD_MS;
            //11200 = -15
//            vTaskDelay(wait);
//            PWM0_ChannelDutySet(PWM_CHANNEL_1, 10900);
//            vTaskDelay(wait);
////            10600 originally
//            PWM0_ChannelDutySet(PWM_CHANNEL_1, 10600);
//            vTaskDelay(wait);
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
