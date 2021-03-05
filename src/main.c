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
#include "./config/gps.h"
#include "./config/Anemometer.h"
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


GPS_INFO* GPS_info;
char GPS_incoming;
char last_GPS='$';

uint8_t GPS_values[100];
char NMEA_buffer[200];
char* ptr = NMEA_buffer;
bool isGPS = false; // true -> read GPS value; false-> read Anemometer value
bool isGPSinfoReady = false; // true-> GPS info parsed; false -> otherwise

Anemometer_INFO* Anemometer_info;
uint8_t Anemometer_values[101];
char Ane_incoming;
double data;

uint8_t SBDFeedback[50];
uint8_t* SBDF=SBDFeedback;

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
    
    // Initialize SD card handler
    //DRV_HANDLE handle =DRV_SDMMC_Open (DRV_SDMMC_INDEX_0, DRV_IO_INTENT_READWRITE | DRV_IO_INTENT_EXCLUSIVE);
    
    

    uint8_t buf[128];
    size_t nbytes = 128;
    size_t bytes_written= nbytes;
    size_t bytes_read = -1;
    char readBuf[256];
    int i = 0;
    const int BOUND = 100;
    int state = 0;

    while ( true )
    {     
        /*
        if (!DRV_SDMMC_IsAttached(handle))
        USART0_Write("Open invalid\n",sizeof("Open invalid\n"));
        else 
        USART0_Write("Open Valid\n",sizeof("Open Valid\n")); */
        
       
        
        
        /*
            else
            {
                // Mount was successful. Do further file operations
              USART0_Write("Success\n",sizeof("Success\n"));
              mountSuc = true;
            }
        }*/
        /* // write GPS in MCU byte by byte
        if (USART0_ReceiverIsReady()){
            GPS_incoming = USART0_ReadByte(); 
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
        
  
       
        if (state==0){ // Mount SD card
            if(SYS_FS_Mount("/dev/mmcblka1", "/mnt/myDrive", FAT, 0, NULL) == SYS_FS_RES_SUCCESS)
            {
                
                state++;
                
            }else {
                char fail_message[100];
                SYS_FS_ERROR err = SYS_FS_Error();
                sprintf(fail_message, "FAIL MESSAGE:%i\r\n", err);
  
                USART1_Write(fail_message,sizeof(fail_message));
            }

        }else if(state==1){
            if(SYS_FS_CurrentDriveSet("/mnt/myDrive") == SYS_FS_RES_FAILURE)
            {
                USART1_Write("DriverFail\r\n",sizeof("DriverFail\r\n"));
                
            }
            else{
                
                state++;
            }
        }else if (state==2){
            SYS_FS_HANDLE handle = SYS_FS_FileOpen("/mnt/myDrive/test.txt", (SYS_FS_FILE_OPEN_APPEND_PLUS));
            
            // read GPS value
            USART0_Read(&buf[0], nbytes);
            
            if (handle == SYS_FS_HANDLE_INVALID){
                
//                uint32_t totalSectors, freeSectors;
//                SYS_FS_DriveSectorGet("/mnt/myDrive", &totalSectors, &freeSectors);
                char fail_message[100];
                SYS_FS_ERROR err = SYS_FS_Error();
                sprintf(fail_message, "FAIL MESSAGE:%i\r\n", err);
  
            }else{ 
               
                bytes_written = SYS_FS_FileWrite(handle, &buf[0], nbytes);
                SYS_FS_FileClose(handle);
                if (bytes_written != -1){
                                    
                    state=4;
                } else {
                    USART1_Write("File Write fail \r\n",sizeof("File Write fail \r\n"));
                }
                
            }       
        }else if(state==3){
            SYS_FS_HANDLE rhandle = SYS_FS_FileOpen("/mnt/myDrive/test.txt", (SYS_FS_FILE_OPEN_READ));
            if (rhandle != SYS_FS_HANDLE_INVALID){
                while (i<BOUND &&  bytes_read==-1){
                     bytes_read = SYS_FS_FileRead(rhandle, readBuf, bytes_written);
                     i++;
                }
                state++;
                SYS_FS_FileClose(rhandle); 
            }     
        }else if (state==4) {
        
            USART1_Write("FileSystemSuccess\r\n",sizeof("FileSystemSuccess\r\n"));
            state++;
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
    }



/*******************************************************************************
 End of File
*/

