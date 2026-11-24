;====================================================
; int.asm
; Timer Interrupt Service Routine
; Starting address: x1200
;
; Clears the reference bit of every PTE.
; Preserves R0, R1, and R2.
;====================================================

.ORIG x1200

; Save registers on supervisor stack
ADD  R6, R6, #-2
STW  R0, R6, #0

ADD  R6, R6, #-2
STW  R1, R6, #0

ADD  R6, R6, #-2
STW  R2, R6, #0

; Load page table base and PTE count
LEA  R0, PTBASE
LDW  R0, R0, #0       ; R0 = x1000
LEA  R1, NUMPTE
LDW  R1, R1, #0       ; R1 = 128

; Clear R bit of each PTE
LOOP LDW  R2, R0, #0  ; Load PTE
AND  R2, R2, #-2      ; Clear bit 0
STW  R2, R0, #0       ; Store PTE
ADD  R0, R0, #2       ; Next PTE
ADD  R1, R1, #-1      ; Decrement counter
BRp  LOOP             ; Repeat while counter > 0

; Restore registers
LDW  R2, R6, #0
ADD  R6, R6, #2

LDW  R1, R6, #0
ADD  R6, R6, #2

LDW  R0, R6, #0
ADD  R6, R6, #2

; Return from interrupt
RTI

; Constants
PTBASE .FILL x1000
NUMPTE .FILL #128

.END