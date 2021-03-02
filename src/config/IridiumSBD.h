/* 
 * File:   IridiumSBD.h
 * Satellite communication library
 * Author: Daisy Zhang
 *
 * Created on August 27, 2020, 8:21 PM
 */

#ifndef IRIDIUMSBD_H
#define	IRIDIUMSBD_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>
    
typedef enum{
    CHARGING = 1, // 500 ma for 30 seconds, Battery capacity required for charging phase: 12.5 A-s 
    IDLE = 2, //the average current consumption is approximately 40mA
    ACTIVE = 3, // whenever any AT command is sent to the unit; 
                // the battery capacity required to carry out a successful SBD 
                 // transmission is approximately 2.8 A-s; for non-successful one
                  // 3.8A-s.
    SLEEP = 4 // a battery capacity usage of 6.3 A-s for 24 hours of sleep mode.

}OP_MODE;

typedef struct{

    PIO_PIN sleep_pin;
    PIO_PIN ring_pin;
    OP_MODE current_mode;
    
    

} IridiumSBD;
/*
bool disableFlowControl(IridiumSBD* rock9603);
bool waitForATResponse(char *response=NULL, int responseSize=0, const char *prompt=NULL, const char *terminator="OK\r\n");
int sendSBDText(const char *message);
int sendSBDBinary(const uint8_t *txData, size_t txDataSize);
int sendReceiveSBDText(const char *message, uint8_t *rxBuffer, size_t &rxBufferSize);
int sendReceiveSBDBinary(const uint8_t *txData, size_t txDataSize, uint8_t *rxBuffer, size_t &rxBufferSize);
int getSignalQuality(int &quality);
int getSystemTime(struct tm &tm);
int getFirmwareVersion(char *version, size_t bufferSize);
int getWaitingMessageCount();
bool isAsleep();
bool hasRingAsserted();
int sleep();
*/
#ifdef	__cplusplus
}
#endif

#endif	/* IRISIUMSBD_H */

