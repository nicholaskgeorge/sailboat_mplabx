/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_anemometer_thread.c

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

#include "app_anemometer_thread.h"
#include "Anemometer.h"
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
    This structure should be initialized by the APP_ANEMOMETER_THREAD_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_ANEMOMETER_THREAD_DATA app_anemometer_threadData;

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
    void APP_ANEMOMETER_THREAD_Initialize ( void )

  Remarks:
    See prototype in app_anemometer_thread.h.
 */

void APP_ANEMOMETER_THREAD_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_anemometer_threadData.state = APP_ANEMOMETER_THREAD_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}

Anemometer_INFO* Anemometer_info;
uint8_t Anemometer_values[101];
/******************************************************************************
  Function:
    void APP_ANEMOMETER_THREAD_Tasks ( void )

  Remarks:
    See prototype in app_anemometer_thread.h.
 */

void APP_ANEMOMETER_THREAD_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( app_anemometer_threadData.state )
    {
        /* Application's initial state. */
        case APP_ANEMOMETER_THREAD_STATE_INIT:
        {
            bool appInitialized = true;
            //Begin Initializing
            app_anemometer_threadData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_0, 0);

            if (appInitialized)
            {
                app_anemometer_threadData.state = APP_ANEMOMETER_THREAD_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_ANEMOMETER_THREAD_STATE_SERVICE_TASKS:
        {
            //Thread Loop
            while(1)
            {
                if (DRV_USART_ReadBuffer(app_anemometer_threadData.usartHandle, &Anemometer_values, 101 ) == true){
                    Anem_Process(Anemometer_info,(char*)Anemometer_values); // parse it into fields
                    //vTaskDelay(10000);
                }
            }
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
