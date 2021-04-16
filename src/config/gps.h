/* 
 * File:   gps.h
 * GPS library
 * Author: Daisy Zhang
 *
 * Created on August 23, 2020, 4:47 PM
 */

#ifndef GPS_H
#define	GPS_H


#include <stdint.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>
#include <math.h>
#include <string.h>
#include  <ctype.h> 
#ifdef	__cplusplus
extern "C" {
#endif

typedef struct
{
	// Sentence buffer and associated pointers

	// char _buffer[_bufferLen];
	size_t bufferLen;
	char* buffer;

	// Information from current NMEA sentence
	char talkerID;
	char messageID[3];

	// Variables parsed and kept for user
	char navSystem;
	bool isValid;
	long latitude, longitude; // In millionths of a degree
	double altitude; // In meters
	bool altitudeValid;
	double speed, course; // speed in m/s, course is track angle in degrees (True)
	long year;
	long month, day, hour, minute, second,hundredths;
	int numSat;
	double hdop;




} GPS_INFO ;

bool GPS_Process(GPS_INFO* GPS_info,char* incoming_char);
bool processGGA(GPS_INFO* GPS_info,const char *start);
bool processRMC(GPS_INFO* GPS_info,const char* start);
const char* parseTime(GPS_INFO* GPS_info,const char* s);
const char* parseDate(GPS_INFO* GPS_info,const char* s);
long parseDegreeMinute(const char* s, uint8_t degWidth,const char **eptr);
long parseFloat(const char* s, const char** eptr);
#ifdef	__cplusplus
}
#endif

#endif	/* GPS_H */

