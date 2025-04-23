//int8_t funcAA(int32_t uno[], int32_t dos) {
//	return uno[dos]=10;
//}

funAA:	LDR R2,=10
  STRB R2,[R0,R1,LSL#2]
  BX LR
.global _start
_start:
  LDR R0,=byteArray
  LDR R1,=1
  BL	funAA
	
	