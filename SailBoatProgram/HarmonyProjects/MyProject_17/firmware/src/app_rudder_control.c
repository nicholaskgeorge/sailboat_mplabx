/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_rudder_control.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_rudder_control.h"
#include "definitions.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_RUDDER_CONTROL_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_RUDDER_CONTROL_DATA app_rudder_controlData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_RUDDER_CONTROL_Initialize ( void )

  Remarks:
    See prototype in app_rudder_control.h.
 */

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




/******************************************************************************
  Function:
    void APP_RUDDER_CONTROL_Tasks ( void )

  Remarks:
    See prototype in app_rudder_control.h.
 */
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

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}
