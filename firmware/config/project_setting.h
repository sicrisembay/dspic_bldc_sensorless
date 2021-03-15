#ifndef PROJECT_SETTING_H
#define PROJECT_SETTING_H

#include "global_def.h"

/*!
 * \def TEST_LEVEL0
 * 
 * Disables all test.
 */
#define TEST_LEVEL0                 (0)

/*!
 * \def TEST_LEVEL1
 * 
 * This test level verifies the 3-phase Inverter function and
 * back EMF zero cross detection
 */
#define TEST_LEVEL1                 (1)

/*!
 * \def USE_TEST_LEVEL
 * 
 * Set the Test Level in this project
 */
#define USE_TEST_LEVEL              TEST_LEVEL1

#endif /* PROJECT_SETTING_H */
