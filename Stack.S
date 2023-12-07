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

.global Stack_main
.type Stack_main, %function

Stack_main:
  push { LR }

  LDR R0, =0xDEADBEEF
  LDR R1, =0xC0FEBABE
  LDR R2, =42

  PUSH { R0-R2 }

  MOV R0, #0
  MOV R1, #0
  MOV R2, #0

  POP { R2 }
  POP { R1 }
  POP { R0 }

  POP { PC }
