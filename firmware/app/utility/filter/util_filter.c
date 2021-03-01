/*!
 * \file util_filter.c
 * \brief This file contains the implementation of filter.
 */

#include "util_filter.h"

_Q16 UtilFilter_ExecuteDF2(_Q16 input, IIR_BIQUAD_DF2_T *pxFilter)
{
#if 0
    _Q16 output;
    _Q16 a0;
    
    a0 = _Q16mpy(input, pxFilter->gain) - _Q16mpy(pxFilter->d0, pxFilter->a1) -
            _Q16mpy(pxFilter->d1, pxFilter->a2);
    
    output = _Q16mpy(a0, pxFilter->b0) + _Q16mpy(pxFilter->d0, pxFilter->b1) +
            _Q16mpy(pxFilter->d1, pxFilter->b2);
    
    pxFilter->d1 = pxFilter->d0;
    pxFilter->d0 = a0;
    
    return(output);
#else
    (void)pxFilter;
    return input;
#endif
}

//*****************************************************************************
// Private function implementations.
//*****************************************************************************


