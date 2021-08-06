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
/* Decodes incoming radio messages. Look at WIZE manual for more details
 * Input: array or pointer to array of data, pointer to buffer and size of data
 *        data: array of bytes to send over serial from radio module
 *        buffer: place to hold the message. Must be 4 bytes longer than message
 *        size: size of the data which is being sent
 * Returns: the length of the message as an int.
 * Note: the maximum size message the radio can send theoretically is 0xF3 or 243 bytes
 * (including the package bytes its 0xF6 or 246) but testing shows reliability starts
 * dropping around 140 bytes so size messages accordingly.
 */
int Radio_Encode(uint8_t* data, uint8_t* buffer, int size){
    //find length bit
    int lengthbit = size+3;
    *buffer = lengthbit;
    //CI bit
    *(buffer+1) = 0x20;
    //setting time bits
    *(buffer+3+size) = 0x00;
    *(buffer+2+size) = 0x00;
    memcpy((buffer+2), data, size);
    return size+4;
}

/* Decodes incoming radio messages. Look at WIZE manual for more details
 * Input: array or pointer to array of type uint8_t
 *        data: array of bytes read over serial from radio module
 *        buffer: place to hold the message. Must be long enough to hold message
 * Returns: the length of the message as an int.
 */
int Radio_Decode(uint8_t *data, uint8_t *buffer){
    //getting pointer to actual message
    uint8_t *ptr =  data;
    //calculating length of important data. Length of whole message is at index 0
    uint8_t length_message = *ptr-10;
    //message does not start until 11 bytes in
    ptr+=11;
    //Copying message to buffer
    memcpy(buffer, ptr, length_message);
    return (int)length_message;
}

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
uint8_t sendbuffer[126]={0};
uint8_t recbuffer[126] ={0};

char* startptr = 0;
char* ptr = 0;
char* numbound = 0;
double value =0;
char* endptr = 0;
int size = 0;
int delay = 0;
char test[] = "boat send";
char test2[] = "lap send";
char confirmed[] = "confirmed";
int num_times_confimred_receive = 0;
bool send = false;
int retry_num = 4;
//int start = 0;


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
//            bool appInitialized = false;
            app_communicationData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_0, 0);
            app_communicationData.send = DRV_USART_Open(DRV_USART_INDEX_0, 0);
            app_communicationData.state = APP_COMMUNICATION_STATE_RECEIVE;
//            while(!appInitialized){
//                if (DRV_USART_ReadBuffer(app_communicationData.usartHandle, &buffer, sizeof(buffer)) == true){
//                    delay = 100 / portTICK_PERIOD_MS;
//                    vTaskDelay(delay);
//                    size = Radio_Decode(buffer,decoded);
//                }
//                if(start == 0){
//                    if (DRV_USART_WriteBuffer(app_communicationData.send, &decoded, sizeof(size)) == true){}
//                    if(strncmp((char*)decoded, "checking connection", size) == 0){
//                        char confirmed[] = "messsage confirmed1";
//                        size = Radio_Encode((uint8_t*)confirmed,buffer,sizeof(confirmed));
//                        if (DRV_USART_WriteBuffer(app_communicationData.send, &buffer, sizeof(buffer)) == true){}
//                        start = 1;
//                    }
//                }
//                if (start == 1){
//                    if(strncmp((char*)decoded, "messsage confirmed2", size) == 0){
//                        appInitialized = true;
//                        break;
//                    }
//                }
//            }
            //app_communicationData.state = APP_COMMUNICATION_STATE_SEND;
            app_communicationData.state = APP_COMMUNICATION_STATE_RECEIVE;
            break;
        }
        
        case APP_COMMUNICATION_STATE_PROCESS_MESSAGE:
        {
            size = Radio_Decode(recbuffer, decoded);
            if (strncmp("lap send",(char*)decoded,sizeof("lap send")-1)==0){
                app_communicationData.state = APP_COMMUNICATION_STATE_SEND;
                break;
            }
            else{
                app_communicationData.state = APP_COMMUNICATION_STATE_RECEIVE;
                break;
            }
//                    //Now we interpret the message
//                    startptr = (char*)decoded;
//                    endptr = (char*) decoded;
//                    //finding bounds of message
//                    while(*startptr != '/'){
//                        startptr++;
//                    }
//                    ptr = startptr;
//                    while(*endptr != '%'){
//                        endptr++;
//                    }
//                    //executing each command
//                    while(ptr != endptr){
//                      if(!find_char(&ptr,'$',endptr)){break;}
//                      //parse for diffrent commands
//                      //Change Mode
//                      if(*(ptr+1) == 'C' && *(ptr+2) == 'M'){
//                          //send = true;
//                          ptr+=3;
//                          //parsing for mode to change to
//                          if(*(ptr+1) == 'N' && *(ptr+2) == 'M'){
//                              //Note: I dont think this will make the state change imediatly
//                              //you will have to work this out
//                              app_course_algorithmData.state = APP_COURSE_ALGORITHM_STATE_NAVIGATE;
//                          }
//                          //break;
//                      }
//                      //Change Course
//                      else if(*(ptr+1) == 'C' && *(ptr+2) == 'C'){
//                          //send = true;
//                          ptr+=3;
//                          break;
//                      }
//                      //Change Parameter
//                      else if(*(ptr+1) == 'C' && *(ptr+2) == 'P'){
//                          find_char(&ptr,':',endptr);
//                          //Specify which parameter
//                          if(*(ptr+1) == 'D' && *(ptr+2) == 'A'){
//                              ptr+=4;
//                              value = strtod(ptr,&numbound);
//                              ptr = numbound;
//                              desired_angle =(int)value;
//                              //break;
//                          }
//                      }
//                      else{break;}
//                    }
//                    if(send){break;}
//                    //asm(" BKPT ");
//    //                app_communicationData.state = APP_COMMUNICATION_STATE_SEND;
//    //                break; 
        }
        
        case APP_COMMUNICATION_STATE_RECEIVE:
        {
            if (DRV_USART_ReadBuffer(app_communicationData.usartHandle, &recbuffer, sizeof(recbuffer)) == true){
                //asm(" BKPT ");
                //without this delay it doesnt work for some reason
//                delay = 0/ portTICK_PERIOD_MS;
//                vTaskDelay(delay);
                app_communicationData.state = APP_COMMUNICATION_STATE_CONFIRM_MCU_RECEIVED;
                break;   
            }
//            app_communicationData.state = APP_COMMUNICATION_STATE_RECEIVE;
//            break;
        }
        /* The default state should never be executed. */
        
        case APP_COMMUNICATION_STATE_CONFIRM_MCU_RECEIVED:
        {
            delay = 1000/ portTICK_PERIOD_MS;
            vTaskDelay(delay);
            size = Radio_Encode((uint8_t*)confirmed,sendbuffer, sizeof(confirmed));
            //asm(" BKPT ");
            if (DRV_USART_WriteBuffer(app_communicationData.send, &sendbuffer, size) == true){
                app_communicationData.state = APP_COMMUNICATION_STATE_PROCESS_MESSAGE;
                break;
            } 
        }
        case APP_COMMUNICATION_STATE_SEND:
        {
            delay = 300/ portTICK_PERIOD_MS;
            vTaskDelay(delay);
            size = Radio_Encode((uint8_t*)test,sendbuffer, sizeof(test));
            //asm(" BKPT ");
            if (DRV_USART_WriteBuffer(app_communicationData.send, &sendbuffer, size) == true){
                app_communicationData.state = APP_COMMUNICATION_STATE_CONFIRM_COMP_RECEIVED;
                break;
            }
        }
        case APP_COMMUNICATION_STATE_CONFIRM_COMP_RECEIVED:
        {
            delay = 500/ portTICK_PERIOD_MS;
            vTaskDelay(delay);
            if (DRV_USART_ReadBuffer(app_communicationData.usartHandle, &recbuffer, sizeof(recbuffer)) == true){
                size = Radio_Decode(recbuffer, decoded);
                if (strncmp("confirmed",(char*)decoded,sizeof("confirmed")-1)==0){
                    //asm(" BKPT ");
                    num_times_confimred_receive = 0;
                    app_communicationData.state = APP_COMMUNICATION_STATE_RECEIVE;
                    break;
                }
            }
            num_times_confimred_receive += 1;
            if (num_times_confimred_receive == retry_num){
                num_times_confimred_receive = 0;
                app_communicationData.state = APP_COMMUNICATION_STATE_SEND;
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
