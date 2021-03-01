#ifndef BLDC_H
#define BLDC_H

#include "global_def.h"

typedef enum {
    BLDC_OK = 0,
    BLDC_INVALID_ARG,        
} BLDC_RET_T;

BLDC_RET_T BLDC_init(void);

#endif /* BLDC_H */