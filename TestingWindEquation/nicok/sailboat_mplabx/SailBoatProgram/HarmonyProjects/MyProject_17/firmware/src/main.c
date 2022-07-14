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
#include <stdio.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "app_anemometer.h"
#include "app_imu.h"


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

Anemometer_INFO* Anemometer_info;
IMU_INFO* IMU_info;


int main ( void )
{
//        printf("How can I solve this.\n");
//        Anemometer_info = (Anemometer_INFO*) calloc(1,sizeof(Anemometer_INFO));
//        IMU_info = (IMU_INFO*) calloc(1,sizeof(IMU_INFO));
        Anemometer_info = (Anemometer_INFO*) malloc(sizeof(Anemometer_INFO));
        IMU_info = (IMU_INFO*) malloc(sizeof(IMU_INFO));
//        if (Anemometer_info == NULL) {
//        printf("Memory not allocated.\n");
//        exit(0);
//        }
//        else {
//
//            // Memory has been successfully allocated
//            printf("Memory successfully allocated using malloc.\n");
//        }
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    while ( true )
    {
//        Anemometer_info = (Anemometer_INFO*) malloc(sizeof(Anemometer_info));
//        IMU_info = (IMU_INFO*) malloc(sizeof(IMU_info));
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

