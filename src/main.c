/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>

#include <string.h>
#include <ctype.h>
#include "Helper_func.h"
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

// Stores the trimmed input string into the given output buffer, which must be
// large enough to store the result.  If it is too small, the output is
// truncated.

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    /* SD Card code work initialize Starts */
    SDCARD_DATA* SdcardData=malloc(sizeof(SDCARD_DATA*));
    SDCARD_Initialize(SdcardData);
    char* sensorFiles[3] = {"GPS.txt","Anem.txt","IMU.txt"};
    SDCARD_WriteorRead(SdcardData,true);
    SDCARD_FileName(SdcardData,sensorFiles[0]);
    SDCARD_StateSwitch(SdcardData,SDCARD_STATE_CARD_MOUNT);
    /* SD Card code work initialize Ends */

    uint8_t buf[500];
    size_t nbytes = 500;

    while ( true ){     
        
        
//        /* I2C data logging Starts */
//        TWIHS0_Read(0x42, &buf[0], nbytes );
//        if (!isallspace(buf,nbytes)){
//            Buffer b = remove_spaces(buf, nbytes);
//            SDCARD_FillinBuffer(SdcardData,b.ptr,b.len);
//            SDCARD_Tasks(SdcardData);
//        }
//        /* I2C data logging Ends */
        
        /* USART data logging Starts */
        USART2_Read(&buf[0],nbytes);
        SDCARD_FillinBuffer(SdcardData,buf,nbytes);
        SDCARD_Tasks(SdcardData);
        /* USART data logging Ends */
        
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        

    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
    }



/*******************************************************************************
 End of File
*/

