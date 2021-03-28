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
#include <time.h>

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


// tc0 callback function which happens every TimerPeriod
/*
static void tc0EventHandler (TC_TIMER_STATUS status, uintptr_t context)
{
    // write to IridiumSBD
    UART0_Write("AT+SBDIX\r",sizeof("AT+SBDIX\r"));
    if ( UART0_ReceiverIsReady())
    UART0_Read(SBDFeedback,sizeof(SBDFeedback));
          
    uint8_t a = UART0_ReadByte();  
    while(a!=0x0A){
        *SBDF=a;
        SBDF++;
        a = UART0_ReadByte();
    }    
}
*/

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* //Timer interrupt event
    TC0_CH0_TimerCallbackRegister(tc0EventHandler, 0);
    TC0_CH0_TimerPeriodSet(2000);
    TC0_CH0_TimerStart();*/
    
    
    //    /* SD Card code work initialize */
//    SDCARD_Initialize();
//    char* sensorFiles[3] = {"GPS.txt","Anem.txt","IMU.txt"};
//    SDCARD_WriteorRead(false);
//    SDCARD_FileName(sensorFiles,3);
//    SDCARD_StateSwitch(SDCARD_STATE_CARD_MOUNT);
  


    uint8_t buf[128];
    size_t nbytes = 128;
//    int state=0;
    while ( true )
    {     
        USART1_Read(&buf[0],nbytes);
        USART1_Write(buf,nbytes); 

    
        /* SD Card code work */
//       SDCARD_Tasks();
       
        /* // write GPS in MCU byte by byte
        if (USART0_ReceiverIsReady()){
            GPS_incoming = USART0_ReadB                                           yte(); 
            if (ptr >= &NMEA_buffer[199]){    
                 
                *ptr = '\0';//incoming_char;
                ptr = NMEA_buffer;
            } else {
                // Terminate buffer then reset pointer
                
                *ptr = GPS_incoming;//incoming_char;
                if (ptr < &NMEA_buffer[199])
                    ++ptr;
            }    
            last_GPS = GPS_incoming;
        }*/
        
        //USART0_Read(GPS_values,sizeof(GPS_values)); // Read all GPS packet in a buffer
        
        
       /* // Read Anemometer data output
        * if (USART1_ReceiverIsReady()){
            Ane_incoming = USART1_ReadByte(); 
            if (ptr >= &Anemometer_values[49]){    
                 
                *ptr = '\0';//incoming_char;
                ptr = Anemometer_values;
            } else {
                // Terminate buffer then reset pointer
                
                *ptr = Ane_incoming;//incoming_char;
                if (ptr < &Anemometer_values[49])
                    ++ptr;
            }    
        }
        USART1_Read(Anemometer_values,sizeof(Anemometer_values));
        Anem_Process(Anemometer_info,(char*)Anemometer_values);*/

        
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        

    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
    }



/*******************************************************************************
 End of File
*/

