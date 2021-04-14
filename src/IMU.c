/* 
 * File:   IMU.c
 * IMU library
 * Author: Daisy Zhang
 *
 * Created on April 13, 2021,
 */

#include "IMU.h"

bool IMU_Process(IMU_INFO* IMU_info,char* incoming_str){
    
    char* ptr = incoming_str;
    char* start=ptr;
    char* end = ptr;
    
    while (*ptr=='\0'){
        ++ptr;
    }
    
    while (*ptr!='\0'){
        if (*ptr=='$'){
            start=ptr;
            // TODO
            ptr = Parse_IMU_Field(IMU_info,s);
        }
        ++ptr;
    }
    IMU_info->bufferLen = end-start;
    IMU_info->buffer = start;

    if (*ptr == '\0') return true; // Parsed a complete sentence. 
    return false;
}

char* Parse_IMU_Field(IMU_INFO* IMU_info,char* s){


}