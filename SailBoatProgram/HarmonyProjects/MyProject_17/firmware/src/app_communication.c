#include "app_communication.h"
#include "app_mast_control.h"
#include "app_course_algorithm.h"

APP_COMMUNICATION_DATA app_communicationData;


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
char test[] = "boat send\n";
char test2[] = "lap send";
char confirmed[] = "confirmed\n";
char signal_confirmed[] = "signal_confirmed\n";
int num_times_confimred_receive = 0;
bool send = false;
int retry_num = 4;
//int start = 0;

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
            break;
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
        }
        
        case APP_COMMUNICATION_STATE_PROCESS_MESSAGE:
        {
//            asm(" BKPT ");
            size = Radio_Decode(recbuffer, decoded);
            if (strncmp("signal check",(char*)decoded,sizeof("signal check")-1)==0){
                app_communicationData.state = APP_COMMUNICATION_STATE_SIGNAL_CONFIRM;
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
            //Without this the filler bits move around to the front of the message
            //screw it up. I do not know why
            while(1){
                delay = 200/ portTICK_PERIOD_MS;
                vTaskDelay(delay);
                if (DRV_USART_ReadBuffer(app_communicationData.usartHandle, &recbuffer, sizeof(recbuffer)) == true){
//                    asm(" BKPT ");
                    app_communicationData.state = APP_COMMUNICATION_STATE_CONFIRM_MCU_RECEIVED;
                    break;   
                }
            }
            break;
        }
        
        case APP_COMMUNICATION_STATE_CONFIRM_MCU_RECEIVED:
        {
            delay = 1000/ portTICK_PERIOD_MS;
            vTaskDelay(delay);
            size = Radio_Encode((uint8_t*)confirmed,sendbuffer, sizeof(confirmed));
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
            while(1){
                delay = 400/ portTICK_PERIOD_MS;
                vTaskDelay(delay);
                if (DRV_USART_ReadBuffer(app_communicationData.usartHandle, &recbuffer, sizeof(recbuffer)) == true){
                    size = Radio_Decode(recbuffer, decoded);
                    //asm(" BKPT ");
                    if (strncmp("confirmed",(char*)decoded,sizeof("confirmed")-1)==0){
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
            break;
        }
        case APP_COMMUNICATION_STATE_SIGNAL_CONFIRM:
        {
            delay = 1000/ portTICK_PERIOD_MS;
            vTaskDelay(delay);
            size = Radio_Encode((uint8_t*)signal_confirmed,sendbuffer, sizeof(signal_confirmed));
            //asm(" BKPT ");
            if (DRV_USART_WriteBuffer(app_communicationData.send, &sendbuffer, size) == true){
                app_communicationData.state = APP_COMMUNICATION_STATE_CONFIRM_COMP_RECEIVED;
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
