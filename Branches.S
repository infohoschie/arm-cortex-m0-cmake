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

.global Branches_main
.type Branches_main, %function

Branches_main:
  LDR R0, =-1
  MOVS R1, R0

  // Negative
  BMI step2

  NOP
  B Branches_main

step2:
  LDR R0, =0
  MOVS R1, R0

  // not zero
  BNE step2

  BX LR
