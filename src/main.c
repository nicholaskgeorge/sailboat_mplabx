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
//    SDCARD_DATA* SdcardData=malloc(sizeof(SDCARD_DATA*));
//    SDCARD_Initialize(SdcardData);
//    char* sensorFiles[3] = {"GPS.txt","Anem.txt","IMU.txt"};
//    SDCARD_WriteorRead(SdcardData,true);
//    SDCARD_FileName(SdcardData,sensorFiles[1]);
//    SDCARD_StateSwitch(SdcardData,SDCARD_STATE_CARD_MOUNT);
    /* SD Card code work initialize Ends */
    
    /* PWM Generation initialize Starts */
//    PWM0_ChannelsStart(PWM_CHANNEL_#_MASK);
    /* PWM Generation initialize Ends */
    
    
     /* Read Duty Cycle Starts */
//    TC0_CH0_CaptureStart();
     /* Read Duty Cycle Ends */
    
    
    
    char buf[500];
    size_t nbytes = 500;
    
    while ( true ){     
        USART2_Read(&buf[0],nbytes);
        USART1_Write(&buf[0],nbytes);
                
                
        /* Parse Anemometer information Starts*/
//        Anemometer_INFO* ane_info=malloc(sizeof(Anemometer_INFO*));
//        USART1_Read(&buf[0],nbytes);
//        Anem_Process(ane_info,buf);
        /* Parse Anemometer information Ends*/
        
//        /* I2C data logging Starts */
//        TWIHS0_Read(0x42, &buf[0], nbytes );
//        if (!isallspace(buf,nbytes)){
//            Buffer b = remove_spaces(buf, nbytes);
//            SDCARD_FillinBuffer(SdcardData,b.ptr,b.len);
//            SDCARD_Tasks(SdcardData);
//        }
//        /* I2C data logging Ends */
        
        
        
        
        
        /* USART data logging Starts */
//        USART1_Read(&buf[0],nbytes);
//        SDCARD_FillinBuffer(SdcardData,buf,nbytes);
//        SDCARD_Tasks(SdcardData);
        /* USART data logging Ends */
        
        
        
        
        
        /* Sleep Mode entry (wake up by any interrupt) Starts */
//        __WFI();
        /* Sleep Mode entry (wake up by any interrupt) Ends*/
        
        
        
        
        /* Generate PWM signal Starts */
//        PWM0_ChannelDutySet(PWM_CHANNEL_#, duty#);
        /* Generate PWM signal Ends */
        
        
        /* Generate PWM signal Starts */
//        while(((TC_CAPTURE_STATUS)(TC0_REGS->TC_CHANNEL[0].TC_SR & TC_CAPTURE_STATUS_MSK) & TC_CAPTURE_B_LOAD) != TC_CAPTURE_B_LOAD);
//        
//        off_time = TC0_CH0_CaptureAGet();
//        period = TC0_CH0_CaptureBGet();
//
//        /* Read Duty Cycle in percentage and Frequency in Hz */
//        on_time = period - off_time;
//        duty = ((on_time) * 100U) / period;
//        frequency = (TC0_CH0_CaptureFrequencyGet() / period);
          /* Read PWM signal Ends */
        
        
        
        
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        

    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
    }



/*******************************************************************************
 End of File
*/

