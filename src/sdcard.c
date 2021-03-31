/*
 * File:   sdcard.c
 * This file contains the source code for the MPLAB Harmony application.
 * Author: Daisy Zhang
 *
 * Created on Dec 5, 2020, 3:38 PM
 */

#include "sdcard.h"


SDCARD_DATA SdcardData;



static void tc0EventHandler (TC_TIMER_STATUS status, uintptr_t context)
{
    
    SdcardData.state = SDCARD_STATE_TIMEOUT;
     TC0_CH0_TimerStop();
}

/* This is initialization function */

void SDCARD_Initialize(void)
{
    SdcardData.state = SDCARD_STATE_WAITING;
    SdcardData.currentFilePosition = 0;
    SdcardData.numFile = 1;
    SdcardData.fileOpen = malloc(SdcardData.numFile* sizeof(char*));
    SdcardData.fileOpen[0] = "test.txt";
    SdcardData.WorR = true; // true -> write to file; false -> read file
    SdcardData.buf = 0;
    SdcardData.nbytes = 128;
    SdcardData.nbytesReturned = 0;
    SdcardData.devName = "/dev/mmcblka1";
    SdcardData.mntName = "/mnt/myDrive1";
    
    TC0_CH0_TimerPeriodSet(SD_CARD_DEFAULT_TIMOUT);
    TC0_CH0_TimerCallbackRegister(tc0EventHandler, 0);
}

/* This is the task routine for this lab */

void SDCARD_Tasks(void)
{
    
    
    TC0_CH0_TimerStart();

    while (SdcardData.state!=SDCARD_STATE_TIMEOUT && SdcardData.state!=SDCARD_STATE_SUCCESS){
        switch(SdcardData.state)
        {

                case SDCARD_STATE_CARD_MOUNT:
                  if(SYS_FS_Mount(SdcardData.devName, SdcardData.mntName, FAT, 0, NULL) != SYS_FS_RES_SUCCESS)
                  {
                      /* The disk could not be mounted. Try mounting again until success. */
                      
                      USART1_Write("Keep mounting...\r\n",sizeof("Keep mounting...\r\n"));
                  }
                  else
                  {
                      /* Mount was successful. Unmount the disk, for testing. */
                      SdcardData.state = SDCARD_STATE_CARD_CURRENT_DRIVE_SET;
                  }
                  break;


                case SDCARD_STATE_CARD_CURRENT_DRIVE_SET:
                    USART1_Write("Set Drive...\r\n",sizeof("Set Drive...\r\n"));
                  if(SYS_FS_CurrentDriveSet(SdcardData.mntName) == SYS_FS_RES_FAILURE)
                  {
                      /* Error while setting current drive */
                      SdcardData.state = SDCARD_STATE_ERROR;
                  }
                  else
                  {
                    if(SdcardData.WorR){
                      SdcardData.state = SDCARD_STATE_WRITE_FILE;
                    }else{
                      SdcardData.state = SDCARD_STATE_READ_FILE;

                    }
                  }
                  break;

                case SDCARD_STATE_WRITE_FILE:
                    USART1_Write("Open file...\r\n",sizeof("Open file...\r\n"));
                  SdcardData.fileHandle = SYS_FS_FileOpen(SdcardData.fileOpen[--SdcardData.numFile], SYS_FS_FILE_OPEN_APPEND);// try create a new file named "fileopen" and see
                  if(SdcardData.fileHandle == SYS_FS_HANDLE_INVALID)
                  {
                      /* Could not open the file. Error out*/
                      SdcardData.state = SDCARD_STATE_ERROR;
                  }
                  else
                  {
                    SDCARD_FillBuffer();
                    USART1_Write("Write to file...\r\n",sizeof("Write to file...\r\n"));
                    SdcardData.nbytesReturned = SYS_FS_FileWrite(SdcardData.fileHandle, (void *)SdcardData.buf, SdcardData.nbytes);
                    if (SdcardData.nbytesReturned == -1){
                      SdcardData.state = SDCARD_STATE_ERROR;
                    }else if (SdcardData.numFile==0) {
                      SdcardData.state = SDCARD_STATE_SUCCESS;
                    }else{
                        USART1_Write("Next file...\r\n",sizeof("Next file...\r\n"));
                      SdcardData.state = SDCARD_STATE_WRITE_FILE;  
                    }
                    SYS_FS_FileClose(SdcardData.fileHandle);
                  }
                  break;

                case SDCARD_STATE_READ_FILE:
                  SdcardData.fileHandle = SYS_FS_FileOpen(SdcardData.fileOpen[--SdcardData.numFile], SYS_FS_FILE_OPEN_READ);
                  if(SdcardData.fileHandle == SYS_FS_HANDLE_INVALID)
                  {
                      /* Could not open the file. Error out*/
                      SdcardData.state = SDCARD_STATE_ERROR;
                  }
                  else{
                      /* Read the file size */
                      SdcardData.state = SDCARD_STATE_READ_FILE_SIZE;
                  }

                  break;

                case SDCARD_STATE_READ_FILE_SIZE:
                  SdcardData.fileSize = SYS_FS_FileSize( SdcardData.fileHandle);

                  if (SdcardData.fileSize == -1)
                  {
                      /* Could not read file size. Error out*/
                      SdcardData.state = SDCARD_STATE_ERROR;
                  }
                  else
                  {
                      SdcardData.state = SDCARD_STATE_CARD_READ;
                  }

                  break;

                case SDCARD_STATE_CARD_READ:;

                  SdcardData.nbytesReturned = SYS_FS_FileRead(SdcardData.fileHandle,(void *)SdcardData.buf, SdcardData.nbytes);

                  if (SdcardData.nbytesReturned == -1  ){
                    SdcardData.state = SDCARD_STATE_ERROR;               
                  }else if (SdcardData.numFile == 0 ){
                    SdcardData.state = SDCARD_STATE_SUCCESS;
                  }else{
                      SdcardData.state = SDCARD_STATE_READ_FILE;
                  }
                  SYS_FS_FileClose(SdcardData.fileHandle);
                  break;

                case SDCARD_STATE_ERROR:;
                  SYS_FS_ERROR err = SYS_FS_Error();
                  char fail_message[50];
                  sprintf(fail_message, "FAIL MESSAGE:%i\r\n", err);
                  USART1_Write(fail_message,sizeof(fail_message));
                  break;

                case SDCARD_STATE_SUCCESS:
                  USART1_Write("File Operation Success!\r\n",sizeof("File Operation Success!\r\n"));
                  SdcardData.state = SDCARD_STATE_WAITING;
                  break;

                case SDCARD_STATE_WAITING:
                  // do nothing until state changed
                    
                  break;
                case SDCARD_STATE_TIMEOUT:
                  // do nothing until state changed
                    USART1_Write("File Operation TIMEOUT!\r\n",sizeof("File Operation TIMEOUT!\r\n"));
                  break;

                default:
                {
                }
                break;
        }
        SYS_Tasks ( );
    }
    if (SdcardData.state == SDCARD_STATE_SUCCESS){
        USART1_Write("File Operation Success!\r\n",sizeof("File Operation Success!\r\n"));
      
    }else{
        USART1_Write("File Operation TIMEOUT!\r\n",sizeof("File Operation TIMEOUT!\r\n"));
        
    }
        SdcardData.state = SDCARD_STATE_WAITING;
}

void SDCARD_WriteorRead(bool ifwrite){
  SdcardData.WorR = ifwrite;
}

void SDCARD_FileName(char** fileName,int numFile){
    
    SdcardData.numFile = numFile;
    SdcardData.fileOpen = fileName;
    
}

void SDCARD_StateSwitch(SDCARD_STATES state){
  if (SdcardData.state == SDCARD_STATE_WAITING)
    SdcardData.state = state;
}

void SDCARD_FillBuffer(void){
    uint8_t buf[256];
    size_t nbytes = 256;
    if (strcmp(SdcardData.fileOpen[SdcardData.numFile],"GPS.txt")==0){
        TWIHS0_Read(0x42, buf, nbytes );
    }else if (strcmp(SdcardData.fileOpen[SdcardData.numFile],"Anem.txt")==0) {
        USART1_Read(&buf[0], nbytes);
    }else if (strcmp(SdcardData.fileOpen[SdcardData.numFile],"IMU.txt")==0) {
        USART2_Read(&buf[0], nbytes);
    }else{
        USART0_Read(&buf[0], nbytes);
    }
    SdcardData.buf = buf;
    SdcardData.nbytes = nbytes;
    
}

void SDCARD_SetDevice(char* devName){
  SdcardData.devName = devName;
}

void SDCARD_SetMount(char* mntName){
  SdcardData.mntName = mntName;
}

