          ;squere
RETURN_SQ equ     0x20000040
          LDR     R0 ,=RETURN_SQ
          MOV     R1 ,#0x2
          STR     R1 ,[R0]
          MOV     R2 ,#0x0

          BL      Squera

Squera    
          LDR     R3,=RETURN_SQ
          LDR     R6,[R3]
          CMP     R6,R2
          BPL     nonneg
          SUBS    R6,R2,R6

nonneg    
          SUBS    R4,R6,#0x1
sqer      
          ADD     R5,R5,R6
          SUBS    R4,R4,#0x1
          CMP     R4,R2
          BPL      sqer

          STR     R5,[R3,#0x4]

          LDR     R2 ,[R0,#0x4]

          end



