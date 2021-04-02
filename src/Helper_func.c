#include "Helper_func.h"

bool isallspace(uint8_t* s,size_t len){
    uint8_t* end = s+len-1;
    uint8_t* d = s;
    while (*d == 0xff && d!= end){
        d++;
    }

    return d== end;
    
}

Buffer remove_spaces(uint8_t* s,size_t len) {
        uint8_t* d = s;
        uint8_t* end = s+len-1;
        Buffer t;
        while (*d == 0xf8|| *d == 0xf5|| *d == 0xff ) {
            ++d;
        }
        t.ptr = d;
        d = end;
        while (*d == 0xf8|| *d == 0xf5 ||*d == 0x00|| *d == 0xff) {
            --d;
        }
        t.len = d-t.ptr+1;
        uint8_t* ptr_end = t.ptr+t.len;
        *ptr_end= '\0';
        return t;
}
