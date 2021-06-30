/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_imu.c

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

#include "app_imu.h"
#include "IMU.h"

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
    This structure should be initialized by the APP_IMU_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_IMU_DATA app_imuData;

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
    void APP_IMU_Initialize ( void )

  Remarks:
    See prototype in app_imu.h.
 */

void APP_IMU_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_imuData.state = APP_IMU_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_IMU_Tasks ( void )

  Remarks:
    See prototype in app_imu.h.
 */

IMU_INFO* IMU_info;
uint8_t IMU_values[128];
int yaw = 0;
char syaw[8];

void APP_IMU_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_imuData.state )
    {
        /* Application's initial state. */
        case APP_IMU_STATE_INIT:
        {
            bool appInitialized = true;
            app_imuData.usartHandleSEND = DRV_USART_Open(DRV_USART_INDEX_0, 0);
            app_imuData.usartHandleREC = DRV_USART_Open(DRV_USART_INDEX_2, 0);

            if (appInitialized)
            {
                app_imuData.state = APP_IMU_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_IMU_STATE_SERVICE_TASKS:
        {
            while(1){
                if (DRV_USART_ReadBuffer(app_imuData.usartHandleREC, &IMU_values, sizeof(IMU_values)) == true){
                    //IMU_Process(IMU_info,(char*)IMU_values); // parse it into fields
                    yaw = yaw;
                }
//                yaw = IMU_info->yaw;
//                itoa(yaw, syaw, 10);
//                syaw[6] = '\r';
//                syaw[7] = '\n';
                DRV_USART_WriteBuffer(app_imuData.usartHandleSEND, (char*)IMU_values, sizeof(IMU_values));
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
