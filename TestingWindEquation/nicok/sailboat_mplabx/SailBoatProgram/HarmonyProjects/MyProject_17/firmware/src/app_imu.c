
#include "app_imu.h"
#include "imu.h"

APP_IMU_DATA app_imuData;
IMU_INFO* IMU_info;
//BUFFER MUST BE 122 BYTES LONG OR THIS WILL NOT WORK
uint8_t IMU_values[122];
int delay;
int heading =1;
char sheading[7];
char hello[6] = "hello\n";
bool appInitialized = false;

void APP_IMU_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_imuData.state = APP_IMU_STATE_INIT;
}

void APP_IMU_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_imuData.state )
    {
        /* Application's initial state. */
        case APP_IMU_STATE_INIT:
        {
            app_imuData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_2, 0);
            sheading[5]='\n';
            sheading[6]='\r';
            appInitialized = true;
            if (appInitialized)
            {
                app_imuData.state = APP_IMU_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_IMU_STATE_SERVICE_TASKS:
        {  
//             asm(" BKPT ");
            if (DRV_USART_ReadBuffer(app_imuData.usartHandle, IMU_values, sizeof(IMU_values)) == true){
                IMU_Process(IMU_info,(char*)IMU_values);
//                if(IMU_info->yaw == 0){
//                    asm(" BKPT ");
//                }    
            }
//            delay = 200 / portTICK_PERIOD_MS;
//            vTaskDelay(delay);  
            break;
        }
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

//function which tells us if the message is valid
//int checkimuvalid(uint8_t* message){
//    //compares the start of the message to what is should be
//    if(strncmp(message,"$VNYMR,",7)==0){
//        //return true if the message is valid
//        return 1;
//    }
//    //return false otherwise
//    return 0;
//}
