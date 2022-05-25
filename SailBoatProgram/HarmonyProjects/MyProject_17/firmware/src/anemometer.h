
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
    
void realtive_to_boat(Anemometer_INFO* aminfo, IMU_INFO* imuinfo, int mast_angle){
    double v = aminfo->v;
    double u = aminfo->u;
    double w = aminfo->w;
    //double th1 = imuinfo->yaw;
    double th2 = mast_angle;
    double alpha = imuinfo->roll;
    double phi = imuinfo->pitch;
//    double db = 0.730;
//    double dm = 0.5;
//    double phi_dot = 0;//imuinfo->GyroY;
//    double th2_dot = 0;//we may just not measure wind when the mast moves
//    double alpha_dot = 0;//imuinfo->GyroX;
//    double th1_dot = 0;//imuinfo->GyroZ;
    double vel_wind_rel_an[3]= {v*cos(phi)*cos(th2) - w*sin(phi) + u*cos(phi)*sin(th2),
                                v*cos(alpha)*sin(th2) - u*cos(alpha)*cos(th2) - w*sin(alpha),
                                u*(sin(alpha)*cos(th2) - sin(phi)*sin(th2)) - v*(cos(th2)*sin(phi) + sin(alpha)*sin(th2)) - w*cos(alpha)*cos(phi)};
//    double vel_an_rel_boat[3]= {-db*phi_dot*sin(phi)*cos(th2)-db*th2_dot*cos(phi)*sin(th2)-dm*phi_dot*cos(phi) + th1_dot*(db*cos(alpha)*sin(th2)-dm*sin(alpha)),
//                                -db*alpha_dot*sin(alpha)*sin(th2) + db*th2_dot*cos(alpha)*cos(th2) - dm*alpha_dot*cos(alpha) - th1_dot*(db*cos(phi)*cos(th2) - dm*sin(phi)),
//                                -(db*(-th2_dot*sin(th2)*sin(phi) + phi_dot*cos(th2)*cos(phi) + alpha_dot*cos(phi)*cos(th2) + th2_dot*sin(alpha)*cos(phi) + phi_dot*cos(alpha)*sin(phi)))};
    //Rename these variables so that they describe the actual vectors as forward back left and right
    aminfo->boatv = vel_wind_rel_an[0];
//    aminfo->boatu = vel_wind_rel_an[1]
    aminfo->boatw = vel_wind_rel_an[2];
    //aminfo->boatwinddir = calculate it
    if (abs(aminfo->boatwinddir)<90){
        aminfo->wind_is_from_front = true;
    }
    else{
        aminfo->wind_is_from_front = false;
    }
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
        return endptr;
    }else if (*s == 'V'){
        Anemometer_info->v = strtod (s+2, &endptr);//skip space;
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
            Anemometer_info->pitch = strtod (s+2, &endptr);//skip space;
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
