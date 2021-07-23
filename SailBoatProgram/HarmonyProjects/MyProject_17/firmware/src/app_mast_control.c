
#include "app_mast_control.h"
#include "definitions.h"

APP_MAST_CONTROL_DATA app_mast_controlData;
int desired_angle = 0;
int angle = 0;
int error = 0;
int allowed_error = 2;
bool calibrate = false;
bool ontheleft = false;
bool startchange = false;
//duty values go between 5000 and 10000. Lower value spins faster
int duty = 0;
int sleep = 0;

void encoder(PIO_PIN pin, uintptr_t context)
{   
    if(B_signal_Get()==1){
       angle += 1;
    }
    else{
       angle -=1;
    }
}

void reset(PIO_PIN pin, uintptr_t context){
    angle = 0;
    calibrate = true;
}

void CCW(){
    motor_direction_Set();
}

void CW(){
    motor_direction_Clear();
}

void APP_MAST_CONTROL_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_mast_controlData.state = APP_MAST_CONTROL_STATE_INIT;
    PIO_PinInterruptCallbackRegister(PIO_PIN_PD26, encoder, (uintptr_t)NULL);
    PIO_PinInterruptCallbackRegister(PIO_PIN_PD30, reset, (uintptr_t)NULL);
    PIO_PinInterruptEnable(PIO_PIN_PD26);
    PIO_PinInterruptEnable(PIO_PIN_PD30);
    PWM0_ChannelsStart(PWM_CHANNEL_0_MASK);
    CCW();
    app_mast_controlData.state = APP_MAST_CONTROL_STATE_INIT;
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}

void APP_MAST_CONTROL_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( app_mast_controlData.state )
    {
        /* Application's initial state. */
        case APP_MAST_CONTROL_STATE_INIT:
        {
            //Calibration at the start to find zero
                        if(!calibrate){
                /*
                 * When we start we need to find where zero is. When we hit zero 
                 * we are calibrated. This is the algorithm to find zero: We assume
                 * the starting potion is right of zero. we keep moving CCW until 
                 * we hit zero. If the total angle we travel is greater than 90 
                 * we know that we actually started on the right side (since
                 * -90 is the farthest right we can go) We switch to move CW and
                 * wait to hit zero.
                 */
            PWM0_ChannelDutySet(PWM_CHANNEL_0, 1000);
                //I made it 93 just to give it a little error tolerance
                if(angle>93 && !ontheleft){
                    ontheleft = true;
                    CW();
                }   
            }
//            sleep = 11000 / portTICK_PERIOD_MS;
//            vTaskDelay(sleep);
            if (calibrate)
            {
                PWM0_ChannelDutySet(PWM_CHANNEL_0, 10000);
                app_mast_controlData.state = APP_MAST_CONTROL_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_MAST_CONTROL_STATE_SERVICE_TASKS:
        {
            //angle restriction
            if(desired_angle > 90){
                desired_angle = 90;
            }
            else if (desired_angle < -90){
                desired_angle = -90;
            }
            error = desired_angle-angle;
            //This makes sure the boat always takes the smallest angle to get back
            if (abs(error)>180){
                error = 360-abs(error);
                if(desired_angle> angle){
                    error*=-1;
                }
            }
//            printf("\r\n"); 
//            printf("Angle Error: %.2d", error);
//            printf("\r\n"); 
            if(abs(error)>allowed_error){
                duty = 1000;
                if (error>0){
                    CCW();
                }
                else{
                    CW();
                }
            }
            else{
                duty = 10000;
            }
            PWM0_ChannelDutySet(PWM_CHANNEL_0, duty);
            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
