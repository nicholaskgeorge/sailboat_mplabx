/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_anemometer.c

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

#include "app_anemometer.h"
#include "anemometer.h"
#include "app_mast_control.h"
#include <math.h>

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
    This structure should be initialized by the APP_ANEMOMETER_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_ANEMOMETER_DATA app_anemometerData;

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
    void APP_ANEMOMETER_Initialize ( void )

  Remarks:
    See prototype in app_anemometer.h.
 */

void APP_ANEMOMETER_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_anemometerData.state = APP_ANEMOMETER_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_ANEMOMETER_Tasks ( void )

  Remarks:
    See prototype in app_anemometer.h.
 */


int delay;
int dir = 0;
float avg = 0;
int count = 0;
int avnum = 2;
char sdir[7];
float wind_angle=0;
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
                }
                /*
                 *Things don't change very fast when sailing so we don't need to
                 * be reading instantaneously. This blocks the process for 100 ms
                 * to create a delay before the next read.
                 */
                delay = 200 / portTICK_PERIOD_MS;
                vTaskDelay(delay);
                dir = Anemometer_info->direction;
                if(dir>180){
                    dir = 360-dir;
                }
                else if (dir<180){
                    dir*=-1;
                }
                if(abs(Anemometer_info->u)<0.7 && abs(Anemometer_info->v)<0.7){
                    dir = 0;
                }
                desired_angle = -dir;
                itoa(dir, sdir, 10);
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


/*******************************************************************************
 End of File
 */
