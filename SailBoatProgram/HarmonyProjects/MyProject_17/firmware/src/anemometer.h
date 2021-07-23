/*
 * File:   Anemometer.h
 * Anemometer library
 * Author: Daisy Zhang
 *
 * Created on August 26, 2020, 3:38 PM
 */

#ifndef ANEMOMETER_H
#define	ANEMOMETER_H

#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>
//#include "configuration.h"
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


	// Variables parsed and kept for user
	double speed;
	double direction;
	double u,v,w;
	double temp,humidity,pressure;
	double pitch,roll;
    double magnetic_dir;
    double boatu,boatv,boatw;
    double boatwinddir;

} Anemometer_INFO ;

bool Anem_Process(Anemometer_INFO* Anemometer_info,char* incoming_str);
char* ParseField(Anemometer_INFO* Anemometer_info,char* s);
extern Anemometer_INFO* Anemometer_info;
extern uint8_t Anemometer_values[128];

#ifdef	__cplusplus
}
#endif

#endif	/* ANEMOMETER_H */