/**
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Thomas Vogt
 * Sven Reis
 **/

.section .text
.align 2

.global Fibonacci_main
.type Fibonacci_main, %function

Fibonacci_main:
  LDR R0, =__RAM_BASE

  LDR R1, =1
  LDR R2, =1

  LDR R4, =10

loop_start:
  ADD R3, R1, R2
  MOV R1, R2
  MOV R2, R3

  STR R3, [R0, #0]
  ADD R0, #4

  SUB R4, #1
  BNE loop_start

  BX LR
