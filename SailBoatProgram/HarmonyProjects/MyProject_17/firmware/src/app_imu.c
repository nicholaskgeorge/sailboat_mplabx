
#include "app_imu.h"

APP_IMU_DATA app_imuData;

void APP_IMU_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_imuData.state = APP_IMU_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}

bool IMU_Process(IMU_INFO* IMU_info,char* incoming_str){
    
    char* ptr = incoming_str;
    char* start=ptr;
    char* end = ptr;
    
    while (*ptr=='\0'){ // find the start of non-null values
        ++ptr;
    }
    
    while (*ptr != '$' && *ptr != '\0'){ // find the start of the message
        ++ptr;
    }
    if (*ptr == '\0'){
        return false;
    }else{
        start = ptr;
    }
    
    while (*ptr != '*' && *ptr!='\0'){ // find the end of the message
        ++ptr;
    }
    if (*ptr == '\0'){
        return false;
    }else{
        end = ptr;
    }
    
    IMU_info->bufferLen = end-start;
    IMU_info->buffer = start;
    
    
    
    return Parse_IMU_Field(IMU_info);
    
}

bool Parse_IMU_Field(IMU_INFO* IMU_info){
    char* str=IMU_info->buffer;
    char* end = str+IMU_info->bufferLen;
 
    char * pch;
    long int field_index[12];
    int i = 0;
    
    pch=strchr(str,',');
    while (pch!=NULL && pch-end<=0)
    {
        field_index[i] = pch-str;
        pch=strchr(pch+1,',');
        i++;
    }
    if (i!=12){
        return false;
    }
    strncpy(IMU_info->messagetype, str+3, 3);

    char* endptr = str+field_index[1]-1;
    
    IMU_info->yaw = strtod (str+1+field_index[0], &endptr);
    endptr = str+field_index[2]-1;
    IMU_info->pitch = strtod (str+1+field_index[1], &endptr);
    endptr = str+field_index[3]-1;
    IMU_info->roll = strtod (str+1+field_index[2], &endptr);
    endptr = str+field_index[4]-1;
    IMU_info->MagX = strtod (str+1+field_index[3], &endptr);
    endptr = str+field_index[5]-1;
    IMU_info->MagY = strtod (str+1+field_index[4], &(endptr));
    endptr = str+field_index[6]-1;
    IMU_info->MagZ = strtod (str+1+field_index[5], &endptr);
    endptr = str+field_index[7]-1;
    IMU_info->AccelX = strtod (str+1+field_index[6], &endptr);
    endptr = str+field_index[8]-1;
    IMU_info->AccelY = strtod (str+1+field_index[7], &endptr);
    endptr = str+field_index[9]-1;
    IMU_info->AccelZ = strtod (str+1+field_index[8], &(endptr));
    endptr = str+field_index[10]-1;
    IMU_info->GyroX = strtod (str+1+field_index[9], &endptr);
    endptr = str+field_index[11]-1;
    IMU_info->GyroY = strtod (str+1+field_index[10], &endptr);
    endptr = end-1;
    IMU_info->GyroZ = strtod (str+1+field_index[11], &endptr);
    IMU_info->heading = (180/M_PI)*atan2(IMU_info->MagY,IMU_info->MagX);
    return true;
}

/******************************************************************************
  Function:
    void APP_IMU_Tasks ( void )

  Remarks:
    See prototype in app_imu.h.
 */

IMU_INFO* IMU_info;
uint8_t IMU_values[128];
int delay;
int heading =1;
char sheading[7];
bool appInitialized = false;

void APP_IMU_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_imuData.state )
    {
        /* Application's initial state. */
        case APP_IMU_STATE_INIT:
        {
            app_imuData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_2, 0);
//            app_imuData.send = DRV_USART_Open(DRV_USART_INDEX_1, 0);
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
            if (DRV_USART_ReadBuffer(app_imuData.usartHandle, IMU_values, sizeof(IMU_values)) == true){
                IMU_Process(IMU_info,(char*)IMU_values);
            }
            delay = 500 / portTICK_PERIOD_MS;
            vTaskDelay(delay);  
            heading = IMU_info->yaw;
//            asm(" BKPT ");
            itoa(heading, sheading, 10);
//            if (DRV_USART_WriteBuffer(app_imuData.send, sheading, sizeof(sheading)) == true){
//                delay = 200 / portTICK_PERIOD_MS;
//                vTaskDelay(delay);
//            }
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
