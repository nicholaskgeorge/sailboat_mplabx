/* 
 * File:   Helper_func.h
 * Author: daisy
 *
 * Created on April 1, 2021, 11:08 PM
 */

#ifndef HELPER_FUNC_H
#define	HELPER_FUNC_H

#ifdef	__cplusplus
extern "C" {
#endif

    
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>

#include <string.h>
#include <ctype.h>
    
typedef struct
{
  uint8_t* ptr;
  size_t len;
  
}Buffer;

bool isallspace(uint8_t* s,size_t len);
Buffer remove_spaces(uint8_t* s,size_t len);


#ifdef	__cplusplus
}
#endif

#endif	/* HELPER_FUNC_H */

