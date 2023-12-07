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

.global LoadStore_main
.type LoadStore_main, %function

ByteConst:
.byte 0x80

.align 2
HalfWordConst:
.hword 0xffff

.align 4

LoadStore_main:
  LDR R5,=ByteConst
  LDR R6,=0

  LDRB R0, [R5,R6]
  LDRSB R1, [R5,R6]

  LDR R5,=HalfWordConst
  LDR R6,=0

  LDRH R2, [R5,R6]
  LDRSH R3, [R5,R6]

  BX LR
