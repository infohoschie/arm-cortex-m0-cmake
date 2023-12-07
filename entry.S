/**
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Thomas Vogt
 * Sven Reis
 **/

.section .vectors, "ax"
.align 2
.globl __Vectors

__Vectors:
.long __StackTop       /*     Top of Stack */
.long Reset_Handler    /*     Reset Handler */

.ascii "HELLO WORLD"

.section .text
.align 2

.global Reset_Handler
.type Reset_Handler, %function

Reset_Handler:
//  bl Branches_main
//  bl Loop_main
//  bl Fibonacci_main
//  bl LoadStore_main
//  bl Stack_main

  // fibonacciRecursive( 1, 1, 10)
//  mov R1, #1
//  mov R2, #1
//  mov R3, #10
//  bl FibonacciRecursive

  NOP

  MOVS R0, #1
  MOVS R0, #0x0
  MVN R0,R0

endless_loop:
  NOP
  b endless_loop
