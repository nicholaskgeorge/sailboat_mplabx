/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _EXAMPLE_FILE_NAME_H    /* Guard against multiple inclusion */
#define _EXAMPLE_FILE_NAME_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
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
    bool wind_is_from_front;
    bool wind_present;

} Anemometer_INFO;
    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
