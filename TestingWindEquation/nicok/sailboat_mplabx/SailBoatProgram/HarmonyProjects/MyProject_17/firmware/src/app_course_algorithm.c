
#include "app_course_algorithm.h"
#include "app_mast_control.h"
#include "app_anemometer.h"
#include "app_communication.h"
#include "app_gps.h"
#include "app_imu.h"
#include <math.h>
#include "driver/usart/drv_usart.h"

APP_COURSE_ALGORITHM_DATA app_course_algorithmData;
APP_COMMUNICATION_DATA app_communicationData;
GPS_INFO* GPS_info;
Anemometer_INFO* Anemometer_info;
IMU_INFO* IMU_info;
float allowed_cruise_angle_error = 10;
float allowed_set_angle_error = 7;
int allowed_rudder_wind_error = 10;
int rudder_angle_to_wind = 0;
int mast_angle_to_wind = 0;
int desired_mast_angle;
int desired_rudder_angle;
float rudder_angle;
char confirmation_year[4];
char date[11];
char* date_ptr = 0;
navigation_goal destination;
char* message_ptr;
int message_size;
char gps_not_ready[] = "GPS connection not yet established";
char gps_ready[] = "GPS Connection established";
bool sending;
int check = 0;

float distancetopt(double lat1,double long1, double lat2, double long2){
    //this is called the Haversine formula. It can be found online
    double phi1 = lat1*M_PI/180;
    double phi2 = lat2*M_PI/180;
    double lambda1 = long1*M_PI/180;
    double lambda2 = long2*M_PI/180;
    double a = pow(sin((phi2-phi1)/2),2) + cos(phi1)*cos(phi2) * pow(sin((lambda2-lambda1)/2),2);
    double distance = 6371*2*atan2(sqrt(a),sqrt(1-a));
    return distance;// in km
}

float angletopt(double lat1,double long1, double lat2, double long2){
    //this is called the Haversine formula. It can be found online
    double phi1 = lat1*M_PI/180;
    double phi2 = lat2*M_PI/180;
    double lambda1 = long1*M_PI/180;
    double lambda2 = long2*M_PI/180;
    double angle = 180/M_PI*atan2(sin(lambda2-lambda1)*cos(phi2),cos(phi1)*sin(phi2)-sin(phi1)*cos(phi2)*cos(lambda2-lambda1));
    return angle;// in degrees
}


void APP_COURSE_ALGORITHM_Initialize ( void )
{
    app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_INIT;
}

void APP_COURSE_ALGORITHM_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_course_algorithmData.state )
    {
        /* Application's initial state. */
        case APP_COURSE_ALGORITHM_STATE_INIT:
        {
            bool appInitialized = true;
            if (appInitialized)
            {
//                app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE;
                app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_GPS_NOT_READY;
                GPS_info->isValid=0;
            }
            break;
        }
        case APP_COURSE_ALGORITHM_STATE_GPS_NOT_READY:
        {
            while(1){
//                strcpy(date,__DATE__);
                date_ptr = date;
//                memcpy(confirmation_year,date_ptr+sizeof(date)-4,4);
                if((int)GPS_info->isValid == 1){
//                  asm(" BKPT ");
//                  while(sending){vTaskDelay(100/ portTICK_PERIOD_MS);}//wait till ready to send
//                  asm(" BKPT ");
//                  message_ptr = gps_ready;
//                  message_size = sizeof(gps_ready);
//                  sending = true;
                  app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE;
                  break;
                }
                vTaskDelay(10000/ portTICK_PERIOD_MS);
                //send message that the GPS is not ready
//                asm(" BKPT ");
//                if(!sending){
////                    asm(" BKPT ");
//
//                    message_ptr = gps_not_ready;
//                    message_size = sizeof(gps_not_ready);
//                    sending = true;
//                    DRV_USART_ReadQueuePurge(app_communicationData.usartHandle);
//                    app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_GPS_NOT_READY;
//                }
            }
            break;
        }
        case APP_COURSE_ALGORITHM_STATE_NAVIGATE:
        {
            while(1){
//            This is a simple straight line point to point procedure
                rudder_angle_to_wind = mast_angle-Anemometer_info->boatwinddir+rudder_angle;
                mast_angle_to_wind = mast_angle-Anemometer_info->boatwinddir;
                destination.distance = distancetopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
                destination.angle_to_point = angletopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
                if(destination.distance<=0.05){
                        destination.destination_reached = true;
                }
                if(destination.destination_reached | destination.gotopoint){
                    app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_DONT_MOVE;
                    break;
                }
                if (abs(destination.angle_to_point)>allowed_cruise_angle_error){
                    app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_TURN;
                    break;
                }
            }
            break;
        }
        
        case APP_COURSE_ALGORITHM_STATE_TURN:
        {
            while(1){
                destination.angle_to_point = angletopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
                if(abs(destination.angle_to_point)>allowed_set_angle_error){
                    //With no wind the wind direction from the anemometer is nonsense
                    //We don't want to use it if there is no wind. Other wise we should
                    //just keep our current position
                    if(Anemometer_info->wind_present){
                        desired_mast_angle = Anemometer_info->boatwinddir;
                        if(destination.angle_to_point>0){
                            desired_rudder_angle = -15;
                        }
                        else{
                            desired_rudder_angle = 15;
                        }
                    }
                }
                else{
                    if(Anemometer_info->wind_present){
                        if(Anemometer_info->boatwinddir>0){
                            desired_mast_angle = Anemometer_info->boatwinddir-15;
                            desired_rudder_angle = 15;
                        }
                        else{
                            desired_mast_angle = Anemometer_info->boatwinddir+15;
                            desired_rudder_angle = -15;
                        }
                    }
                    app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE; 
                    break;
                }
            }
            break;
        }
        
        case APP_COURSE_ALGORITHM_STATE_DONT_MOVE:
        {
//            if (Anemometer_info->wind_present){
//                desired_mast_angle = Anemometer_info->boatwinddir;
//                desired_rudder_angle = 0;
//            }
        } 
        
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

