
#include "app_mast_control.h"
#include "definitions.h"

APP_MAST_CONTROL_DATA app_mast_controlData;
int desired_mast_angle = 0;
int mast_angle = 0;
int error = 0;
int allowed_error = 2;
bool calibrate = false;
bool ontheleft = false;
bool startchange = false;
// +/- restrict_angle is the farthest the mast will be allowed to go
int restrict_angle = 135;
//duty values go between 5000 and 10000. Lower value spins faster
int duty = 0;
int sleep = 0;
int allowed_calibration_error = 3;
/*
 * Updates the mast_angle variable accordingly based on encoder measurments
 * This function is placed on an interrupt which runs whenever we see the 
 * falling edge of the A signal.
 */
void mast_encoder(PIO_PIN pin, uintptr_t context)
{   
    //Increment angle if B is high
    if(Mast_B_signal_Get()==1){
       mast_angle += 1;
    }
    //Decrement if B is low
    else{
       mast_angle -=1;
    }
}

/*
 * Resets the mast angle and sets calibrated flag high
 * Placed to run on an interrupt every time z signal is high
 */
void mast_reset(PIO_PIN pin, uintptr_t context){
    mast_angle = 0;
    calibrate = true;
}

//Move counter clockwise
void CCW(){
    motor_direction_Set();
}

//move clockwise
void CW(){
    motor_direction_Clear();
}

void APP_MAST_CONTROL_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_mast_controlData.state = APP_MAST_CONTROL_STATE_INIT;
    //Add A signal interrupt
    PIO_PinInterruptCallbackRegister(PIO_PIN_PD26, mast_encoder, (uintptr_t)NULL);
    //Add B signal interrupt
    PIO_PinInterruptCallbackRegister(PIO_PIN_PD30, mast_reset, (uintptr_t)NULL);
    //Enable A signal pin
    PIO_PinInterruptEnable(PIO_PIN_PD26);
    //Enable Z signal pin
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
            //NOTE THIS STOPS THE TASK FROM RUNNING WE DONT NEED IT
            vTaskDelay(1000/ portTICK_PERIOD_MS);
            break;
        }

        case APP_MAST_CONTROL_STATE_SERVICE_TASKS:
        {
//            vTaskDelay(100000/ portTICK_PERIOD_MS);
            
            //ensure mast angle is not greater than restrict angle
//            asm(" BKPT ");
            if(desired_mast_angle > restrict_angle){
                //if so apply restriction
                desired_mast_angle = restrict_angle;
            }
            //ensure mast angle is not greater than restrict angle
            else if (desired_mast_angle < restrict_angle *-1){
                //if so apply restriction
                desired_mast_angle = restrict_angle *-1;
            }
            //calculate error
            error = desired_mast_angle-mast_angle;
            //This makes sure the boat always takes the smallest mast_angle to get back
//            if (abs(error)>180){
//                error = 360-abs(error);
//                if(desired_mast_angle> mast_angle){
//                    error*=-1;
//                }
//            }
//            printf("\r\n"); 
//            printf("Angle Error: %.2d", error);
//            printf("\r\n"); 
            //mast angle error correction if substantial error is found
            if(abs(error)>allowed_error){
                //make mast turn
                duty = 1000;
                //set rotation direction
                if (error>0){
                    CCW();
                }
                else{
                    CW();
                }
            }
            //if no substantial error found keep mast still
            else{
                duty = 10000;
            }
            //send PWM value to the motor 
            PWM0_ChannelDutySet(PWM_CHANNEL_0, duty);
            break;
        }
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

