#ifndef GLOBAL_DEF_H
#define GLOBAL_DEF_H

#include <p33FJ128MC706A.h>

/*!
 * \typedef boolean
 */
typedef unsigned short      BOOLEAN_T;

/*!
 * \typedef Unsigned 8-bit
 */
typedef unsigned char       UNSIGNED8_T;

/*!
 * \typedef Unsigned 16-bit
 */
typedef unsigned short      UNSIGNED16_T;

/*!
 * \typedef Unsigned 32-bit
 */
typedef unsigned long       UNSIGNED32_T;
/// \typedef Unsigned 64-bit
typedef unsigned long long  UNSIGNED64_T;

/// \typedef Signed 8-bit
typedef signed char         SIGNED8_T;
/// \typedef Signed 16-bit
typedef signed short        SIGNED16_T;
/// \typedef Signed 32-bit
typedef signed long         SIGNED32_T;
/// \typedef Signed 64-bit
typedef signed long long    SIGNED64_T;

/// \def TRUE
#define TRUE                (1)
/// \def FALSE
#define FALSE               (0)
/// \def SET
#define SET                 (1)
/// \def CLEAR
#define CLEAR               (0)
/// \def ACTIVE
#define ACTIVE              (1)
/// \deef INACTIVE
#define INACTIVE            (0)

#endif /* GLOBAL_DEF_H */
