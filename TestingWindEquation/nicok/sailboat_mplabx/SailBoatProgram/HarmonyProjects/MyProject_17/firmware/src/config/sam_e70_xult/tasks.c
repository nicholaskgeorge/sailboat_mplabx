/*******************************************************************************
 System Tasks File

  File Name:
    tasks.c

  Summary:
    This file contains source code necessary to maintain system's polled tasks.

  Description:
    This file contains source code necessary to maintain system's polled tasks.
    It implements the "SYS_Tasks" function that calls the individual "Tasks"
    functions for all polled MPLAB Harmony modules in the system.

  Remarks:
    This file requires access to the systemObjects global data structure that
    contains the object handles to all MPLAB Harmony module objects executing
    polled in the system.  These handles are passed into the individual module
    "Tasks" functions to identify the instance of the module to maintain.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "configuration.h"
#include "definitions.h"


// *****************************************************************************
// *****************************************************************************
// Section: RTOS "Tasks" Routine
// *****************************************************************************
// *****************************************************************************

void _SYS_FS_Tasks(  void *pvParameters  )
{
    while(1)
    {
        SYS_FS_Tasks();
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}


void _DRV_SDMMC0_Tasks(  void *pvParameters  )
{
    while(1)
    {
        DRV_SDMMC_Tasks(sysObj.drvSDMMC0);
        vTaskDelay(DRV_SDMMC_RTOS_DELAY_IDX0 / portTICK_PERIOD_MS);
    }
}

/* Handle for the APP_ANEMOMETER_Tasks. */
TaskHandle_t xAPP_ANEMOMETER_Tasks;

void _APP_ANEMOMETER_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        APP_ANEMOMETER_Tasks();
    }
}
/* Handle for the APP_COMMUNICATION_Tasks. */
TaskHandle_t xAPP_COMMUNICATION_Tasks;

void _APP_COMMUNICATION_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        APP_COMMUNICATION_Tasks();
    }
}
/* Handle for the APP_MAST_CONTROL_Tasks. */
TaskHandle_t xAPP_MAST_CONTROL_Tasks;

void _APP_MAST_CONTROL_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        APP_MAST_CONTROL_Tasks();
    }
}
/* Handle for the APP_TEST_WIND_Tasks. */
TaskHandle_t xAPP_TEST_WIND_Tasks;

void _APP_TEST_WIND_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        APP_TEST_WIND_Tasks();
    }
}
/* Handle for the APP_RUDDER_CONTROL_Tasks. */
TaskHandle_t xAPP_RUDDER_CONTROL_Tasks;

void _APP_RUDDER_CONTROL_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        APP_RUDDER_CONTROL_Tasks();
    }
}
/* Handle for the APP_GPS_Tasks. */
TaskHandle_t xAPP_GPS_Tasks;

void _APP_GPS_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        APP_GPS_Tasks();
    }
}
/* Handle for the APP_IMU_Tasks. */
TaskHandle_t xAPP_IMU_Tasks;

void _APP_IMU_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        APP_IMU_Tasks();
    }
}




// *****************************************************************************
// *****************************************************************************
// Section: System "Tasks" Routine
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void SYS_Tasks ( void )

  Remarks:
    See prototype in system/common/sys_module.h.
*/
void SYS_Tasks ( void )
{
    /* Maintain system services */
    
    xTaskCreate( _SYS_FS_Tasks,
        "SYS_FS_TASKS",
        SYS_FS_STACK_SIZE,
        (void*)NULL,
        SYS_FS_PRIORITY,
        (TaskHandle_t*)NULL
    );

    xTaskCreate( _DRV_SDMMC0_Tasks,
        "DRV_SDMMC0_Tasks",
        DRV_SDMMC_STACK_SIZE_IDX0,
        (void*)NULL,
        DRV_SDMMC_PRIORITY_IDX0,
        (TaskHandle_t*)NULL
    );





    /* Maintain Device Drivers */
    

    /* Maintain Middleware & Other Libraries */
    

    /* Maintain the application's state machine. */
        /* Create OS Thread for APP_ANEMOMETER_Tasks. */
    xTaskCreate((TaskFunction_t) _APP_ANEMOMETER_Tasks,
                "APP_ANEMOMETER_Tasks",
                1024,
                NULL,
                0,
                &xAPP_ANEMOMETER_Tasks);

    /* Create OS Thread for APP_COMMUNICATION_Tasks. */
    xTaskCreate((TaskFunction_t) _APP_COMMUNICATION_Tasks,
                "APP_COMMUNICATION_Tasks",
                1024,
                NULL,
                1,
                &xAPP_COMMUNICATION_Tasks);

    /* Create OS Thread for APP_MAST_CONTROL_Tasks. */
    xTaskCreate((TaskFunction_t) _APP_MAST_CONTROL_Tasks,
                "APP_MAST_CONTROL_Tasks",
                1024,
                NULL,
                1,
                &xAPP_MAST_CONTROL_Tasks);

    /* Create OS Thread for APP_TEST_WIND_Tasks. */
    xTaskCreate((TaskFunction_t) _APP_TEST_WIND_Tasks,
                "APP_TEST_WIND_Tasks",
                1024,
                NULL,
                1,
                &xAPP_TEST_WIND_Tasks);

    /* Create OS Thread for APP_RUDDER_CONTROL_Tasks. */
    xTaskCreate((TaskFunction_t) _APP_RUDDER_CONTROL_Tasks,
                "APP_RUDDER_CONTROL_Tasks",
                1024,
                NULL,
                1,
                &xAPP_RUDDER_CONTROL_Tasks);

    /* Create OS Thread for APP_GPS_Tasks. */
    xTaskCreate((TaskFunction_t) _APP_GPS_Tasks,
                "APP_GPS_Tasks",
                1024,
                NULL,
                1,
                &xAPP_GPS_Tasks);

    /* Create OS Thread for APP_IMU_Tasks. */
    xTaskCreate((TaskFunction_t) _APP_IMU_Tasks,
                "APP_IMU_Tasks",
                1024,
                NULL,
                1,
                &xAPP_IMU_Tasks);




    /* Start RTOS Scheduler. */
    
     /**********************************************************************
     * Create all Threads for APP Tasks before starting FreeRTOS Scheduler *
     ***********************************************************************/
    vTaskStartScheduler(); /* This function never returns. */

}

/*******************************************************************************
 End of File
 */

