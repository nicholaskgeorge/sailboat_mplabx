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

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************





int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
//      uint8_t buf[128];
//    size_t nbytes = 128;
//    size_t bytes_written= nbytes;
//    size_t bytes_read = -1;
//    char readBuf[256];
//    int i = 0;
//    const int BOUND = 100;
//    int state = 0;
    
        /* SD Card code work initialize */
    SDCARD_Initialize();
    char* sensorFiles[3] = {"GPS.txt","Anem.txt","IMU.txt"};
    SDCARD_WriteorRead(true);
    SDCARD_FileName(sensorFiles,3);
    SDCARD_StateSwitch(SDCARD_STATE_CARD_MOUNT);
    
    
    while ( true )
    {     
              SDCARD_Tasks();
//        if (state==0){ // Mount SD card
//            if(SYS_FS_Mount("/dev/mmcblka1", "/mnt/myDrive", FAT, 0, NULL) == SYS_FS_RES_SUCCESS)
//            {
//                
//                state++;
//                
//            }else {
//                char fail_message[100];
//                SYS_FS_ERROR err = SYS_FS_Error();
//                sprintf(fail_message, "FAIL MESSAGE:%i\r\n", err);
//  
//                USART1_Write(fail_message,sizeof(fail_message));
//            }
//
//        }else if(state==1){
//            if(SYS_FS_CurrentDriveSet("/mnt/myDrive") == SYS_FS_RES_FAILURE)
//            {
//                USART1_Write("DriverFail\r\n",sizeof("DriverFail\r\n"));
//                
//            }
//            else{
//                
//                state++;
//            }
//        }else if (state==2){
//            SYS_FS_HANDLE handle = SYS_FS_FileOpen("/mnt/myDrive/IMU.txt", (SYS_FS_FILE_OPEN_APPEND_PLUS));
//            
//            // read GPS value
//            USART2_Read(&buf[0], nbytes);
//            
//            if (handle == SYS_FS_HANDLE_INVALID){
//                
////                uint32_t totalSectors, freeSectors;
////                SYS_FS_DriveSectorGet("/mnt/myDrive", &totalSectors, &freeSectors);
//                char fail_message[100];
//                SYS_FS_ERROR err = SYS_FS_Error();
//                sprintf(fail_message, "FAIL MESSAGE:%i\r\n", err);
//  
//            }else{ 
//               
//                bytes_written = SYS_FS_FileWrite(handle, &buf[0], nbytes);
//                SYS_FS_FileClose(handle);
//                if (bytes_written != -1){
//                                    
//                    state=4;
//                } else {
//                    USART1_Write("File Write fail \r\n",sizeof("File Write fail \r\n"));
//                }
//                
//            }       
//        }else if(state==3){
//            SYS_FS_HANDLE rhandle = SYS_FS_FileOpen("/mnt/myDrive/test.txt", (SYS_FS_FILE_OPEN_READ));
//            if (rhandle != SYS_FS_HANDLE_INVALID){
//                while (i<BOUND &&  bytes_read==-1){
//                     bytes_read = SYS_FS_FileRead(rhandle, readBuf, bytes_written);
//                     i++;
//                }
//                state++;
//                SYS_FS_FileClose(rhandle); 
//            }     
//        }else if (state==4) {
//        
//            USART1_Write("FileSystemSuccess\r\n",sizeof("FileSystemSuccess\r\n"));
//            state++;
//        }
    
//        USART2_Read(buf,nbytes); 
//       // TWIHS0_Read( 0x42, buf, nbytes );
//        USART1_Write(buf,nbytes); 
    
   
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        //SYS_Tasks ( );
        

    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
    }



/*******************************************************************************
 End of File
*/

