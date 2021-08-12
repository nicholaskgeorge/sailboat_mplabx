/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app_gps.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_GPS_Initialize" and "APP_GPS_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_GPS_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/

#ifndef _APP_GPS_H
#define _APP_GPS_H

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
#include <math.h>
#include <string.h>
#include "driver/i2c/drv_i2c.h"
#include "FreeRTOS.h"
#include "queue.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif

typedef struct
{
	// Sentence buffer and associated pointers

	// char _buffer[_bufferLen];
	size_t bufferLen;
	char* buffer;

	// Information from current NMEA sentence
	char talkerID;
	char messageID[3];
	// Variables parsed and kept for user
	char navSystem;
	bool isValid;
	double latitude, longitude; // In millionths of a degree
	double altitude; // In meters
	bool altitudeValid;
	double speed, course; // speed in m/s, course is track angle in degrees (True)
	int year;
	int month, day, hour, minute, second,hundredths;
	int numSat;
	double hdop;
} GPS_INFO ;

bool GPS_Process(GPS_INFO* GPS_info,char* incoming_char);
bool processGGA(GPS_INFO* GPS_info, char *start);
bool processRMC(GPS_INFO* GPS_info, char* start);
char* parseTime(GPS_INFO* GPS_info, char* s);
char* parseDate(GPS_INFO* GPS_info, char* s);
double parseDegreeMinute( char* s, uint8_t degWidth, char **eptr);
double parseFloat( char* s,  char** eptr);

extern GPS_INFO* GPS_info;
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
    APP_GPS_STATE_INIT=0,
    APP_GPS_STATE_SERVICE_TASKS,
    /* TODO: Define states used by the application state machine. */

} APP_GPS_STATES;


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
    APP_GPS_STATES state;
    DRV_HANDLE i2cHandle;
    DRV_I2C_TRANSFER_SETUP i2cSetup;
    //EVENT_INFO eventInfo; //I do not know where this comes from 
    uint8_t i2cRxBuffer[5];  
    uint8_t i2cTxBuffer[2];  
    uint8_t usartTxBuffer[35];       
    uint8_t wrIndex;
    /* TODO: Define any additional data used by the application. */

} APP_GPS_DATA;

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
    void APP_GPS_Initialize ( void )

  Summary:
     MPLAB Harmony application initialization routine.

  Description:
    This function initializes the Harmony application.  It places the
    application in its initial state and prepares it to run so that its
    APP_GPS_Tasks function can be called.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_GPS_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void APP_GPS_Initialize ( void );


/*******************************************************************************
  Function:
    void APP_GPS_Tasks ( void )

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
    APP_GPS_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void APP_GPS_Tasks( void );

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _APP_GPS_H */

/*******************************************************************************
 End of File
 */

