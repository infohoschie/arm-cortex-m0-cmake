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

.global Loop_main
.type Loop_main, %function

Loop_main:
  MOVS R0, #10
  MOVS R1, #1
  MOVS R2, #2

loop_start:
  MUL R1, R1, R2
  SUB R0, #1

  BNE loop_start

  BX LR
