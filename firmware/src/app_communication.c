/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_communication.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_communication.h"
#include "app_mast_control.h"
#include "app_course_algorithm.h"
#include "radio.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_COMMUNICATION_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_COMMUNICATION_DATA app_communicationData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_COMMUNICATION_Initialize ( void )

  Remarks:
    See prototype in app_communication.h.
 */

//bool next_command(char** ptr, char* end){
//    while(**ptr != '$'){
//        if(*ptr == end){return false;}
//        (*ptr)++;
//    }
//    return true;
//}

bool find_char(char** ptr,char stop, char* end){
    while(**ptr != stop){
        if(*ptr == end){return false;}
        (*ptr)++;
    }
    return true;
}

void APP_COMMUNICATION_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_communicationData.state = APP_COMMUNICATION_STATE_INIT;
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}

//Remeber that the radio will add 7 bytes to any message you send
uint8_t decoded[126]={0};
uint8_t buffer[126]={0};
char* startptr = 0;
char* ptr = 0;
char* numbound = 0;
double value =0;
char* endptr = 0;
int size = 0;
int delay = 0;
char test[] = "hey\n\r";
bool send = false;


/******************************************************************************
  Function:
    void APP_COMMUNICATION_Tasks ( void )

  Remarks:
    See prototype in app_communication.h.
 */

void APP_COMMUNICATION_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_communicationData.state )
    {
        /* Application's initial state. */
        case APP_COMMUNICATION_STATE_INIT:
        {
            bool appInitialized = true;
            if (appInitialized)
            {
                app_communicationData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_0, 0);
                app_communicationData.send = DRV_USART_Open(DRV_USART_INDEX_1, 0);
                app_communicationData.state = APP_COMMUNICATION_STATE_RECEIVE;
            }
            break;
        }

        case APP_COMMUNICATION_STATE_RECEIVE:
        {
            while(true){
                if (DRV_USART_ReadBuffer(app_communicationData.usartHandle, &buffer, sizeof(buffer)) == true){
                    //decode message and store length of actual info
                    size = Radio_Decode(buffer, decoded);
                    //Now we interpret the message
                    startptr = (char*)decoded;
                    endptr = (char*) decoded;
                    //finding bounds of message
                    while(*startptr != '/'){
                        startptr++;
                    }
                    ptr = startptr;
                    while(*endptr != '%'){
                        endptr++;
                    }
                    //executing each command
                    while(ptr != endptr){
                      if(!find_char(&ptr,'$',endptr)){break;}
                      //parse for diffrent commands
                      //Change Mode
                      if(*(ptr+1) == 'C' && *(ptr+2) == 'M'){
                          //send = true;
                          ptr+=3;
                          //parsing for mode to change to
                          if(*(ptr+1) == 'N' && *(ptr+2) == 'M'){
                              //Note: I dont think this will make the state change imediatly
                              //you will have to work this out
                              app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE;
                          }
                          //break;
                      }
                      //Change Course
                      else if(*(ptr+1) == 'C' && *(ptr+2) == 'C'){
                          //send = true;
                          ptr+=3;
                          break;
                      }
                      //Change Parameter
                      else if(*(ptr+1) == 'C' && *(ptr+2) == 'P'){
                          find_char(&ptr,':',endptr);
                          //Specify which parameter
                          if(*(ptr+1) == 'D' && *(ptr+2) == 'A'){
                              ptr+=4;
                              value = strtod(ptr,&numbound);
                              ptr = numbound;
                              desired_angle =(int)value;
                              //break;
                          }
                      }
                      else{break;}
                    }
                    if(send){break;}
                    //asm(" BKPT ");
    //                app_communicationData.state = APP_COMMUNICATION_STATE_SEND;
    //                break;
                }
            }
        }
        /* The default state should never be executed. */
        case APP_COMMUNICATION_STATE_SEND:
        {
//            delay = 100 / portTICK_PERIOD_MS;
//            vTaskDelay(delay);
//            size = Radio_Decode(buffer, sbuffer);
            if (DRV_USART_WriteBuffer(app_communicationData.send, &test, sizeof(test)) == true){
                app_communicationData.state = APP_COMMUNICATION_STATE_RECEIVE;
                send = false;
                break;
            }
        }
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
