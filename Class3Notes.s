function2:	SUB R0,R0,#5
			BX LR			

function1:	PUSH {LR}
			ADD R0, R0, #10
			BL function2
			POP {LR}
			BX	LR
		
.global _start
_start:
		PUSH {LR}
		LDR r0, =10
		LDR R1,=5
		LDR	R3,=0xff200000
		STR	R0,[R3]
		
		ADD R0,R0,R1
		BL function1
		POP {LR}
		
stop:	B stop
	