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
//#include "anemometer.h"
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
bool Anem_Process(Anemometer_INFO* Anemometer_info,char* incoming_str){

    char* ptr = incoming_str;
    char* s=ptr;

    while (*ptr=='\0'){
        ++ptr;
    }

    while (*ptr!='\0'){
        if (!isspace(*ptr)&&!isdigit(*ptr)&&*ptr!='.'&&*ptr!='-'){
            s=ptr;
            ptr = ParseField(Anemometer_info,s);
        }
        ++ptr;
    }
    Anemometer_info->bufferLen = sizeof(incoming_str);
    Anemometer_info->buffer = incoming_str;

    if (*ptr == '\0') return true; // Parsed a complete sentence.
    return false;
}

/* Parse the anemometer output and change the Anemometer_info struct accordingly.
 * Input: Anemometer_info: Anemometer_INFO struct pointer
 *        s: char pointer to the start of one field of the anemometer output
 *              string. For example, *s is "S  00.15 ......" or *s could be
 *              "D  078......"
 * Returns: the char pointer which points to the end of one field.
 */
char* ParseField(Anemometer_INFO* Anemometer_info,char* s){

    char* endptr = s+1;
    while (*endptr!='\0'){
        if (!isspace(*endptr)&&!isdigit(*endptr)&&(*endptr!='.')&&(*endptr!='-')){
            if ((*s == 'M'&&*endptr=='D')||(*s == 'P'&& *endptr =='I')||(*s == 'R'&& *endptr =='O')){
                endptr = endptr;
            }else{
                endptr-=1;
                break;
            }
        }
        ++endptr;
    }
    if (*s == 'S'){
        Anemometer_info->speed = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'D'){
        Anemometer_info->direction = strtod(s+2,&endptr);;//skip space;
        return endptr;
    }else if (*s == 'U'){
        Anemometer_info->u = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'V'){
        Anemometer_info->v = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'W'){
        Anemometer_info->w = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'T'){
        Anemometer_info->temp = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'H'){
        Anemometer_info->humidity = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'P'){
        if (*(s+1)!='\0'&&*(s+1)=='I'){
            Anemometer_info->pitch = strtod (s+2, &endptr);//skip space;
            return endptr;
        }else if(*(s+1)!='\0'&&*(s+1)==' '){
            Anemometer_info->pressure =strtod (s+2, &endptr);//skip space;
            return endptr;
        }else
            return endptr;
    }else if (*s == 'R'){
        Anemometer_info->roll = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'M'){
        Anemometer_info->magnetic_dir = strtod(s+2,&endptr);;//skip space;
        return endptr;
    }
    return endptr;

}

Anemometer_INFO* Anemometer_info;
uint8_t Anemometer_values[128];

int delay;
int dir = 0;
float avg = 0;
int count = 0;
int avnum = 2;
char sdir[7];
float wind_angle=0;

void realtive_to_boat(Anemometer_INFO* aminfo, IMU_INFO* imuinfo, int mast_angle){
    double v = aminfo->v;
    double u = aminfo->u;
    double w = aminfo->w;
    //double th1 = imuinfo->yaw;
    double th2 = mast_angle;
    double alpha = imuinfo->roll;
    double phi = imuinfo->pitch;
    double db = 0.730;
    double dm = 0.5;
    double phi_dot = 0;//imuinfo->GyroY;
    double th2_dot = 0;//we may just not measure wind when the mast moves
    double alpha_dot = 0;//imuinfo->GyroX;
    double th1_dot = 0;//imuinfo->GyroZ;
    double vel_wind_rel_an[3]= {v*cos(phi)*cos(th2) - w*sin(phi) + u*cos(phi)*sin(th2),
                                v*cos(alpha)*sin(th2) - u*cos(alpha)*cos(th2) - w*sin(alpha),
                                u*(sin(alpha)*cos(th2) - sin(phi)*sin(th2)) - v*(cos(th2)*sin(phi) + sin(alpha)*sin(th2)) - w*cos(alpha)*cos(phi)};
    double vel_an_rel_boat[3]= {-db*phi_dot*sin(phi)*cos(th2)-db*th2_dot*cos(phi)*sin(th2)-dm*phi_dot*cos(phi) + th1_dot*(db*cos(alpha)*sin(th2)-dm*sin(alpha)),
                                -db*alpha_dot*sin(alpha)*sin(th2) + db*th2_dot*cos(alpha)*cos(th2) - dm*alpha_dot*cos(alpha) - th1_dot*(db*cos(phi)*cos(th2) - dm*sin(phi)),
                                -(db*(-th2_dot*sin(th2)*sin(phi) + phi_dot*cos(th2)*cos(phi) + alpha_dot*cos(phi)*cos(th2) + th2_dot*sin(alpha)*cos(phi) + phi_dot*cos(alpha)*sin(phi)))};
    aminfo->boatv = vel_wind_rel_an[0]-vel_an_rel_boat[0];
    aminfo->boatu = vel_wind_rel_an[1]-vel_an_rel_boat[1];
    aminfo->boatw = vel_wind_rel_an[2]-vel_an_rel_boat[2];
    //aminfo->boatwinddir = calculate it
    if (abs(aminfo->boatwinddir)<90){
        aminfo->wind_is_from_front = true;
    }
    else{
        aminfo->wind_is_from_front = false;
    }
}

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
//                delay = 200 / portTICK_PERIOD_MS;
//                vTaskDelay(delay);
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
                desired_mast_angle = -(dir-45);
                
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
