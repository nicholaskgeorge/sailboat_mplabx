#include "app_communication.h"
#include "app_mast_control.h"
//#include "app_course_algorithm.h"

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

//Remember that the radio will add 7 bytes to any message you send (7 bytes more than
//the unencoded message)
//The buffer MUST be 7 bytes greater than the size (before encoding) of the largest message you 
//expect to receive
//i.e if the largest message you expect to send from your laptop is "hello", that is 
//5 bytes to the buffer must be 12 bytes long

#define max_data_size 80
#define receive_buffer_size max_data_size+7
uint8_t decoded[receive_buffer_size]={0};
uint8_t sendbuffer[receive_buffer_size]={0};
uint8_t recbuffer[receive_buffer_size] ={0};


//this is so that only one entity tries to use the send buffer at once
//and so that the boat knows to send
bool sending = false;
//this points to the char which we want to send
char* message_ptr;
//this holds the size of the char we want to send
int message_size = 0;
//int start = 0;
char receive[5];
int chosen_mast_angle = 0;

void APP_COMMUNICATION_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_communicationData.state )
    {
        /* Application's initial state. */
        case APP_COMMUNICATION_STATE_INIT:
        {
          //NOTE THIS STOPS THE TASK FROM RUNNING WE DONT NEED IT
          vTaskDelay(1000/ portTICK_PERIOD_MS);
          break;
        }
        
        case APP_COMMUNICATION_STATE_PROCESS_MESSAGE:
        {
            if (DRV_USART_ReadBuffer(app_communicationData.usartHandle, receive,sizeof(receive))){
                chosen_mast_angle=atoi(receive);
            }
            break;
        }
        
        case APP_COMMUNICATION_STATE_RECEIVE:
        {
            break;
        }
        
        case APP_COMMUNICATION_STATE_CONFIRM_MCU_RECEIVED:
        {
            break;
        }
        
        case APP_COMMUNICATION_STATE_SEND:
        {
            break;
        }
        case APP_COMMUNICATION_STATE_CONFIRM_COMP_RECEIVED:
        {
            break;
        }
        case APP_COMMUNICATION_STATE_SIGNAL_CONFIRM:
        {
            break;
        }
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}
