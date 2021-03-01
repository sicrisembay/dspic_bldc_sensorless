/*!
 * \file util_filter.h
 * \brief This is the interface for filter utility.
 */
//*****************************************************************************
#ifndef UTIL_FILTER_H
#define UTIL_FILTER_H

//*****************************************************************************
// File dependencies.
//*****************************************************************************
#include "libq.h"

//*****************************************************************************
// Public / Internal definitions.
//*****************************************************************************

//***************************************************************************** 
//! Structure for Biquad Direct Form 2 Filter
//!
//! Transfer function of a normalized (a0 = 1) biquadratic filter
//!
//!         Y(z)     b0 + b1*z^-1 + b2*z^-2
//! H(z) = ----- =  ------------------------
//!         X(z)     1 + a1*z^-1 + a2*z^-2
//!
//! 
//*****************************************************************************
typedef struct {
    _Q16 a1;        //!< Biquadratic filter coefficient
    _Q16 a2;        //!< Biquadratic filter coefficient
    _Q16 b0;        //!< Biquadratic filter coefficient
    _Q16 b1;        //!< Biquadratic filter coefficient
    _Q16 b2;        //!< Biquadratic filter coefficient
    _Q16 gain;      //!< Gain
    _Q16 d0;        //!< Delay0 for a Direct Form2 Filter
    _Q16 d1;        //!< Delay1 for a Direct Form2 Filter
} IIR_BIQUAD_DF2_T;

/*!
 * \brief  This function perform biquadratic filter operation in Direct Form 2.
 * \param  input     Input Sample Point in 16.16 fixed point format
 * \param  pxFilter  Pointer to a filter structure.
 *
 * \return Output of the filter operation in 16.16 fixed point format.
 */
_Q16 UtilFilter_ExecuteDF2(_Q16 input, IIR_BIQUAD_DF2_T *pxFilter);

#endif // End UTIL_FILTER_H
