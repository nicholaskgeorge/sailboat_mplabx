/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_course_algorithm.c

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

#include "app_course_algorithm.h"
#include "app_mast_control.h"
#include "app_gps.h"
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
    This structure should be initialized by the APP_COURSE_ALGORITHM_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_COURSE_ALGORITHM_DATA app_course_algorithmData;

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
    /* Place the App state machine in its initial state. */
    app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_COURSE_ALGORITHM_Tasks ( void )

  Remarks:
    See prototype in app_course_algorithm.h.
 */
GPS_INFO* GPS_info;
float magnetic_variation;
float testdist = 0;
float allowed_angle_error =0;
float turn_angle = 0;
float turn_error;
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
            //This is a simple straight line point to point procedure
//            if(destination.destination_reached | destination.gotopoint){
//                //set mode
//                break;
//            }
//            destination.distance = distancetopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
//            destination.angle_to_point = angletopt(GPS_info->latitude, GPS_info->longitude, destination.latitude, destination.longitude);
//            if(destination.distance<=0.05){
//                    destination.destination_reached = true;
//            }
//            if (compass_angle is not within error){
//                turn_angle = destination.angle_to_point;  
//                app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_TURN;
//                break
//            }
        }
        case APP_COURSE_ALGORITHM_STATE_TURN:
        {
//            if(compass angle is within error){
//                app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE; 
//            }
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
