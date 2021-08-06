
#include "app_course_algorithm.h"
#include "app_mast_control.h"
#include "app_anemometer.h"
#include "app_gps.h"
#include "app_imu.h"
#include <math.h>

APP_COURSE_ALGORITHM_DATA app_course_algorithmData;

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

/*
 This function gives the wind vectors relative to the boat. We use the 3D rotation
 * matrix found here (https://en.wikipedia.org/wiki/Rotation_matrix) 
 * and feed it the negative of the yaw pitch and roll angles. We then multiply it
 * by the wind vectors given by the anemometer.
 */
//void relativetoboat(Anemometer_INFO* info, double mast_angle, double roll, double pitch){
//    double xprime = info->u;
//    double yprime = info->v;
//    double zprime = info->w;
//    //double z = cos
//}
/*******************************************************************************
  Function:
    void APP_COURSE_ALGORITHM_Initialize ( void )

  Remarks:
    See prototype in app_course_algorithm.h.
 */

void APP_COURSE_ALGORITHM_Initialize ( void )
{
    app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_INIT;

}

GPS_INFO* GPS_info;
Anemometer_INFO* Anemometer_info;
IMU_INFO* IMU_info;
float magnetic_variation;
float testdist = 0;
float allowed_angle_error = 6;
float turn_angle = 0;
int allowed_rudder_wind_error = 10;
int rudder_angle_to_wind = 0;
int mast_angle_to_wind = 0;
int desired_mast_angle;
int desired_rudder_angle;
float rudder_angle;

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
                app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE;
            }
            break;
        }

        case APP_COURSE_ALGORITHM_STATE_NAVIGATE:
        {
            rudder_angle_to_wind = mast_angle-Anemometer_info->boatwinddir+rudder_angle;
            mast_angle_to_wind = mast_angle-Anemometer_info->boatwinddir;
//            This is a simple straight line point to point procedure
            if(destination.destination_reached | destination.gotopoint){
                //set mode
                break;
            }
            destination.distance = distancetopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
            destination.angle_to_point = angletopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
            if(destination.distance<=0.05){
                    destination.destination_reached = true;
            }
            if (abs(destination.angle_to_point)>allowed_angle_error){
                turn_angle = destination.angle_to_point;  
                app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_TURN;
                break;
            }
        }
        case APP_COURSE_ALGORITHM_STATE_TURN:
        {
            destination.angle_to_point = angletopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
            if(abs(destination.angle_to_point)>allowed_angle_error){
                desired_mast_angle = Anemometer_info->boatwinddir;
                if(destination.angle_to_point>0){
                    desired_rudder_angle = -15;
                }
                else{
                    desired_rudder_angle = 15;
                }
            }
            else{
                if(Anemometer_info->boatwinddir>0){
                    desired_mast_angle = Anemometer_info->boatwinddir-15;
                    desired_rudder_angle = desired_mast_angle+15;
                }
                else{
                    desired_mast_angle = Anemometer_info->boatwinddir+15;
                    desired_rudder_angle = desired_mast_angle+15;
                }
                app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE; 
                break;
            }
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
