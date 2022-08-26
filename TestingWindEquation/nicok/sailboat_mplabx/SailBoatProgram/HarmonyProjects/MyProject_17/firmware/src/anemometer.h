
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
#include <math.h>

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif
    double testv = 65;  

    void realtive_to_earth(Anemometer_INFO* Anemometer_info, IMU_INFO* IMU_info, int mast_angle){
    double v = Anemometer_info->v;
    double u = Anemometer_info->u;
    double w = Anemometer_info->w;
    double ths = mast_angle; // mast angle
    double imu_thy = IMU_info->yaw; // raw yaw angle
    double imu_alpha = IMU_info->roll; //raw roll angle
    double imu_phi = IMU_info->pitch; //raw test angle
    //First Correction:
    //convert the rotated IMU setup to the standard IMU setup (undo 90 degree rotation)
    double cor1_thy = imu_thy; // raw yaw angle
    double cor1_alpha = -1*imu_phi; //raw roll angle
    double cor1_phi = imu_alpha; //raw test angle
    //Second Correction:
    //Convert the standard IMU setup to the boat analysis setup
    double cor2_thy = -1*cor1_thy; // raw yaw angle
    double cor2_alpha = cor1_alpha; //raw roll angle
    double cor2_phi = -1*cor1_phi; //raw test angle

    double wind_vec_rel_boat[3]= {
                                  u*(cos(cor2_phi)*cos(cor2_thy)*sin(ths)-cos(ths)*sin(cor2_thy)) + v*(cos(cor2_phi)*cos(cor2_thy)*cos(ths)-sin(ths)*sin(cor2_thy)) + w*(sin(cor2_thy)), // North Vector
                                  u*(-1*cos(cor2_alpha)*cos(cor2_thy)*cos(ths)+sin(ths)*sin(cor2_thy)) + v*(cos(cor2_alpha)*cos(cor2_thy)*sin(ths)+cos(ths)*sin(cor2_thy)) + w*(-1*sin(cor2_alpha)),//West Vector
                                  u*(sin(cor2_alpha)*cos(ths)-sin(cor2_phi)*sin(ths))+v*(sin(cor2_alpha)*sin(ths)-cos(ths)*sin(cor2_phi))+w*(cos(cor2_alpha)*cos(cor2_phi))//Up Vector
                                 };

    Anemometer_info->boatu = wind_vec_rel_boat[0];
    Anemometer_info->boatv = wind_vec_rel_boat[1];
    Anemometer_info->boatw = wind_vec_rel_boat[2];
}

bool Anem_Process(Anemometer_INFO* Anemometer_info,char* incoming_str){

    char* ptr = incoming_str;
    char* s=ptr;

    while (*ptr=='\0'){
        ++ptr;
    }

    while (*ptr!='\0'){
        if (!isspace(*ptr)&&!isdigit(*ptr)&&*ptr!='.'&&*ptr!='-'){
            s=ptr;
            ptr = ParseField(Anemometer_info,s);
        }
        ++ptr;
    }
    Anemometer_info->bufferLen = sizeof(incoming_str);
    Anemometer_info->buffer = incoming_str;

    if (*ptr == '\0') return true; // Parsed a complete sentence.
    return false;
}

/* Parse the anemometer output and change the Anemometer_info struct accordingly.
 * Input: Anemometer_info: Anemometer_INFO struct pointer
 *        s: char pointer to the start of one field of the anemometer output
 *              string. For example, *s is "S  00.15 ......" or *s could be
 *              "D  078......"
 * Returns: the char pointer which points to the end of one field.
 */
char* ParseField(Anemometer_INFO* Anemometer_info,char* s){

    char* endptr = s+1;
    while (*endptr!='\0'){
        if (!isspace(*endptr)&&!isdigit(*endptr)&&(*endptr!='.')&&(*endptr!='-')){
            if ((*s == 'M'&&*endptr=='D')||(*s == 'P'&& *endptr =='I')||(*s == 'R'&& *endptr =='O')){
                endptr = endptr;
            }else{
                endptr-=1;
                break;
            }
        }
        ++endptr;
    }
    if (*s == 'S'){
        Anemometer_info->speed = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'D'){
        Anemometer_info->direction = strtod(s+2,&endptr);;//skip space;
        return endptr;
    }else if (*s == 'U'){
        Anemometer_info->u = strtod (s+2, &endptr);//skip space;
//        asm(" BKPT ");
        return endptr;
    }else if (*s == 'V'){
         testv = strtod (s+2, &endptr);//skip space;
//         asm(" BKPT ");
         Anemometer_info->v = testv;
       return endptr;
    }else if (*s == 'W'){
        Anemometer_info->w = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'T'){
        Anemometer_info->temp = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'H'){
        Anemometer_info->humidity = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'P'){
        if (*(s+1)!='\0'&&*(s+1)=='I'){
            Anemometer_info->test = strtod (s+2, &endptr);//skip space;
            return endptr;
        }else if(*(s+1)!='\0'&&*(s+1)==' '){
            Anemometer_info->pressure =strtod (s+2, &endptr);//skip space;
            return endptr;
        }else
            return endptr;
    }else if (*s == 'R'){
        Anemometer_info->roll = strtod (s+2, &endptr);//skip space;
        return endptr;
    }else if (*s == 'M'){
        Anemometer_info->magnetic_dir = strtod(s+2,&endptr);;//skip space;
        return endptr;
    }
    return endptr;

}

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
