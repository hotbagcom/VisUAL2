         ;       define the memory start address and assign it to a register, 5 points
Mem_Addr equ     0x20000000
         LDR     R3, =Mem_Addr
         ;       set the register values to be used in operation, 5 points
         MOV     R2, #0x00
         MOV     R4, #99
         MOV     R5, #0
Loop1    
         ;       reach the memory location and store a value there, 5 points
         STR     R5, [R3, R2]
         ADD     R2, R2, #0x04
         ADD     R5, R5, #0x1
         ;       form the branching condition and apply branching accordingly, 5 points
         SUBS    R4, R4, #0x1
         BHS     Loop1
         ;       define the memory start address and assign it to a register, 2 points
         LDR     R3, =Mem_Addr
         LDR     R5, [R3]
         ADD     R6,R6, R5
         ;       set the register values to be used in operation, 2 points
         MOV     R2, #0x04
         MOV     R4, #6
         MOV     R6, #0x00
Loop2    
         ;       reach the memory location and add it to the sum, 5 points
         LDR     R5, [R3, R2]
         ADD     R6,R6, R5
         ;       calculate the next memory address offset value, 6 points
         LSL     R2, R2, #1
         ;       form the branching condition and apply branching accordingly, 5 points
         SUBS    R4, R4, #0x1
         BPL     Loop2