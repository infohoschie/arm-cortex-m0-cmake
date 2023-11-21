/**
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Thomas Vogt, thomas@thomas-vogt.de
 **/

.section .vectors, "ax"
.align 2
.globl   __Vectors
.globl   __Vectors_End
.globl   __Vectors_Size

__Vectors:
.long    __StackTop                         /*     Top of Stack */
.long    Reset_Handler                      /*     Reset Handler */

.ascii "HELLO WORLD"

/*.thumb*/
.section .text
.align 2

/*.thumb_func*/
.global Reset_Handler
.type Reset_Handler, %function

Reset_Handler:
  ldr r0,=Reset_Handler
  bx r0
