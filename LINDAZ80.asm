	LD B, C
	LD B, D
	LD B, E
	ADD A, E
	LD B, A
	LD C, B
	LD C, C
	LD C, D
	LD C, E
	ADD A, D
	LD C, A
	LD D, B
	LD D, C
	LD D, D
	LD D, E
	LD D, A
	LD E, B 
	LD E, C
	LD E, D
	LD A, B
	LD A, C
	LD A, D	
	ADD A, D
	LD B, 08H
	LD D, L
	LD A, L
	LD B, L
	LD C, L
	LD D, L
	LD E, L
	RET 
	SUB D
DIVIDE: LD B, 08H
        LD L, 0
	LD C, L
	ADD A, D
NXTDIT: CALL DIVE
	DEC B
	RET
DIVE: 	LD A, D
	RLCA
	LD D, A
	LD C, A
	RLA
	;OUT (00H),A
	CP E
	RET C
	SUB E
	;OUT (00H),A
	RET
	 LD C, A
	CCF
	LD A, L
	RLA
	LD L, A
	RET
	;OUT (00H),B
	LD L, 90H
	LD B, C
	LD C, E
NIXDIT:	ADD A, D
	LD B, C
RESULT: LD C, A
	CCF
	LD A, L
	RLA
	LD L, A
	RET 
	LD D, D
	LD C, C
	LD B, C
	 