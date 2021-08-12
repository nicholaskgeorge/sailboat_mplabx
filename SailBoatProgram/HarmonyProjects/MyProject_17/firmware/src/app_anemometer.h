/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app_anemometer.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_ANEMOMETER_Initialize" and "APP_ANEMOMETER_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_ANEMOMETER_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/

#ifndef _APP_ANEMOMETER_H
#define _APP_ANEMOMETER_H

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
#include "app_imu.h"

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
    APP_ANEMOMETER_STATE_INIT=0,
    APP_ANEMOMETER_STATE_SERVICE_TASKS,
    /* TODO: Define states used by the application state machine. */

} APP_ANEMOMETER_STATES;


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
    APP_ANEMOMETER_STATES state;
    DRV_HANDLE usartHandleSEND;
    DRV_HANDLE usartHandleREC;
    //EVENT_INFO eventInfo; //I do not know where this comes from 
    uint8_t i2cRxBuffer[5];  
    uint8_t i2cTxBuffer[2];  
    uint8_t usartTxBuffer[35];       
    uint8_t wrIndex;
    /* TODO: Define any additional data used by the application. */

} APP_ANEMOMETER_DATA;

typedef struct
{
	// Sentence buffer and associated pointers

	// char _buffer[_bufferLen];
	size_t bufferLen;
	char* buffer;


	// Variables parsed and kept for user
	double speed;
	double direction;
	double u,v,w;
	double temp,humidity,pressure;
	double pitch,roll;
    double magnetic_dir;
    double boatu,boatv,boatw;
    double boatwinddir;
    bool wind_is_from_front;
    bool wind_present;

} Anemometer_INFO ;

bool Anem_Process(Anemometer_INFO* Anemometer_info,char* incoming_str);
char* ParseField(Anemometer_INFO* Anemometer_info,char* s);
extern Anemometer_INFO* Anemometer_info;
extern uint8_t Anemometer_values[128];

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
    void APP_ANEMOMETER_Initialize ( void )

  Summary:
     MPLAB Harmony application initialization routine.

  Description:
    This function initializes the Harmony application.  It places the
    application in its initial state and prepares it to run so that its
    APP_ANEMOMETER_Tasks function can be called.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_ANEMOMETER_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void realtive_to_boat(Anemometer_INFO* aminfo, IMU_INFO* iminfo, int mast_angle);

void APP_ANEMOMETER_Initialize ( void );


/*******************************************************************************
  Function:
    void APP_ANEMOMETER_Tasks ( void )

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
    APP_ANEMOMETER_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void APP_ANEMOMETER_Tasks( void );

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _APP_ANEMOMETER_H */

/*******************************************************************************
 End of File
 */

