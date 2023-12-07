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

.global FibonacciRecursive
.type FibonacciRecursive, %function

FibonacciRecursive:
  PUSH { LR }
  PUSH { R1-R4 }

  ADD R4, R1, R2
  SUB R3, #1
  BNE reccall

  MOV R0, R4
  POP { R1-R4 }
  POP { PC }

reccall:
  MOV R1, R2
  MOV R2, R4
  BL FibonacciRecursive
  POP { R1-R4 }
  POP { PC }
