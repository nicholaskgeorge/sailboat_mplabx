/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app_course_algorithm.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_COURSE_ALGORITHM_Initialize" and "APP_COURSE_ALGORITHM_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_COURSE_ALGORITHM_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/

#ifndef _APP_COURSE_ALGORITHM_H
#define _APP_COURSE_ALGORITHM_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"
#include "driver/usart/drv_usart.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "anemometer.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behavior of the application at various times.
*/

typedef enum
{
    /* Application's state machine's initial state. */
    APP_COURSE_ALGORITHM_STATE_INIT=0,
    APP_COURSE_ALGORITHM_STATE_NAVIGATE,
    APP_COURSE_ALGORITHM_STATE_TURN,
    APP_COURSE_ALGORITHM_STATE_STOP,
    APP_COURSE_ALGORITHM_STATE_DONT_MOVE,
    
    /* TODO: Define states used by the application state machine. */

} APP_COURSE_ALGORITHM_STATES;


// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* The application's current state */
    APP_COURSE_ALGORITHM_STATES state;
    DRV_HANDLE usartHandle;
    //EVENT_INFO eventInfo; //I do not know where this comes from 
    uint8_t i2cRxBuffer[5];  
    uint8_t i2cTxBuffer[2];  
    uint8_t usartTxBuffer[180];       
    uint8_t wrIndex;
    /* TODO: Define any additional data used by the application. */

} APP_COURSE_ALGORITHM_DATA;

 typedef struct{
        //information about the destintion
        float latitude;
        float longitude;
        float distance;
        float angle_to_point;
        bool destination_reached;// = false;
        bool gotopoint;// = false;
    } navigation_goal;
    
navigation_goal destination;
extern APP_COURSE_ALGORITHM_DATA app_course_algorithmData;

extern float magnetic_variation;//=0;

//void relativetoboat(Anemometer_INFO* info, double mast_angle, double roll, double pitch);

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************
/* These routines are called by drivers when certain events occur.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_COURSE_ALGORITHM_Initialize ( void )

  Summary:
     MPLAB Harmony application initialization routine.

  Description:
    This function initializes the Harmony application.  It places the
    application in its initial state and prepares it to run so that its
    APP_COURSE_ALGORITHM_Tasks function can be called.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_COURSE_ALGORITHM_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void APP_COURSE_ALGORITHM_Initialize ( void );


/*******************************************************************************
  Function:
    void APP_COURSE_ALGORITHM_Tasks ( void )

  Summary:
    MPLAB Harmony Demo application tasks function

  Description:
    This routine is the Harmony Demo application's tasks function.  It
    defines the application's state machine and core logic.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_COURSE_ALGORITHM_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void APP_COURSE_ALGORITHM_Tasks( void );

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _APP_COURSE_ALGORITHM_H */

/*******************************************************************************
 End of File
 */

