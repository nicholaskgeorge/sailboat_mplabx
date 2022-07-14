
#include "app_test_wind.h"
#include "app_anemometer.h"
#include "app_imu.h"
#include "stdio.h"
#include "app_communication.h"

#define an_info_size sizeof(Anemometer_INFO)
APP_TEST_WIND_DATA app_test_windData;
Anemometer_INFO* Anemometer_info;
IMU_INFO* IMU_info;

int chosen_mast_angle;
char sendvalues[160];
char testSizes[95];
char receive[6];
float calculated_angle = 0;
char testmessage[] = "hey";


void APP_TEST_WIND_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_test_windData.state = APP_TEST_WIND_STATE_INIT;

}

void APP_TEST_WIND_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( app_test_windData.state )
    {
        /* Application's initial state. */
        case APP_TEST_WIND_STATE_INIT:
        {
            bool appInitialized = true;
            if (appInitialized)
            {
                Anemometer_info->boatu = 0;
                Anemometer_info->boatv = 0;
                Anemometer_info->boatw = 0;
                Anemometer_info->u = 0;
                Anemometer_info->v = 0; 
                Anemometer_info->w = 0;
                app_test_windData.usartHandleSEND = DRV_USART_Open(DRV_USART_INDEX_1, 0);
                app_test_windData.state = APP_TEST_WIND_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_TEST_WIND_STATE_SERVICE_TASKS:
        {   
            //convert to boat frame
//                realtive_to_earth(Anemometer_info, IMU_info, chosen_mast_angle);
                //Calculated wind direction
//                calculated_angle = IMU_info->yaw;//atan2(Anemometer_info->boatv,Anemometer_info->boatu);
                //put data in sending buffer
        
                sprintf(sendvalues, 
                        "Converted{U:%f V:%f W:%f} Calculated Angle{%f} Original{U:%f V:%f W:%f} Mast Angle{%d}\n",
                        Anemometer_info->boatu,Anemometer_info->boatv,Anemometer_info->boatw, calculated_angle, Anemometer_info->u,Anemometer_info->v,Anemometer_info->w,chosen_mast_angle
                       );
//                asm(" BKPT ");
            
                sprintf(testSizes,
                        "Y:%p P:%p R:%p M:%p __ U:%p V:%p W:%p\n",
                        &IMU_info->yaw,&IMU_info->pitch,&IMU_info->roll,&IMU_info->MagX,&Anemometer_info->u,&Anemometer_info->v,&Anemometer_info->w
                        );
//                asm(" BKPT ");
                //send results to computer
                if (DRV_USART_WriteBuffer(app_test_windData.usartHandleSEND, sendvalues, sizeof(sendvalues)) == true){vTaskDelay(400/portTICK_PERIOD_MS);}
                if (DRV_USART_WriteBuffer(app_test_windData.usartHandleSEND, testSizes, sizeof(testSizes)) == true){vTaskDelay(400/portTICK_PERIOD_MS);}
                
//                if (DRV_USART_WriteBuffer(app_test_windData.usartHandleSEND, testmessage, sizeof(testmessage)) == true){vTaskDelay(400/portTICK_PERIOD_MS);}
                
                
//                if (DRV_USART_ReadBuffer(app_test_windData.usartHandleREC, receive,sizeof(receive))){
//                    choosen_mast_angle=atoi(receive);
//                }
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
