/**
 * Copyright (c) 2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with  Microchip products.
 * It is your responsibility to comply with  third party license terms
 * applicable to your use of third party software (including open
 * source software) that may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY
 * IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS
 * FOR A PARTICULAR PURPOSE.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL,
 * PUNITIVE, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF
 * ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF
 * MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE
 * FORESEEABLE.TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL
 * LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT
 * EXCEED THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO
 * MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 */
/*
 * Support and FAQ: visit <a href="http://www.microchip.com/support/hottopics.aspx"></a>
 */
#ifndef _OWI_BIT_FUNCTIONS_H_
#define _OWI_BIT_FUNCTIONS_H_

#include "../OWI_common/OWIdefs.h"
#include "OWIPolled.h"

unsigned char OWI_TouchBit(unsigned char outValue);

void OWI_Init();
//#define OWI_Init(arg) OWI_Init()

void OWI_WriteBit1();
//#define OWI_WriteBit1(arg) OWI_WriteBit1()

void OWI_WriteBit0();
//#define OWI_WriteBit0(arg) OWI_WriteBit0()

unsigned char OWI_ReadBit();
//#define OWI_ReadBit(arg) OWI_ReadBit()

unsigned char OWI_DetectPresence();
//#define OWI_DetectPresence(arg) OWI_DetectPresence()

#endif
