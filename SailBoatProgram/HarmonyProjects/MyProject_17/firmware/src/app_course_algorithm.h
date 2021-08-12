
#ifndef _APP_COURSE_ALGORITHM_H
#define _APP_COURSE_ALGORITHM_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"
#include "driver/usart/drv_usart.h"
#include "FreeRTOS.h"
#include "queue.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif


typedef enum
{
    /* Application's state machine's initial state. */
    APP_COURSE_ALGORITHM_STATE_INIT=0,
    APP_COURSE_ALGORITHM_STATE_NAVIGATE,
    APP_COURSE_ALGORITHM_STATE_ADJUST,
    APP_COURSE_ALGORITHM_STATE_TURN,
    APP_COURSE_ALGORITHM_STATE_STOP,
    APP_COURSE_ALGORITHM_STATE_DONT_MOVE,
  
    /* TODO: Define states used by the application state machine. */

} APP_COURSE_ALGORITHM_STATES;

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

