(INIT)
@0
D=A
@pos.x // col
M=D

@0
D=A
@pos.y // row
M=D

@o1
M=0
@0
D=A
@i1
M=D
@0
D=A
@i2
M=D

@16348
D=A
@word
M=D




(READ)

@24576
D=M; 
@130
D=D-A
@LEFTPRESSED
D; JEQ

@24576
D=M; 
@131
D=D-A
@UPPRESSED
D; JEQ

@24576
D=M; 
@132
D=D-A
@RIGHTPRESSED
D; JEQ

@24576
D=M; 
@133
D=D-A
@DOWNPRESSED
D; JEQ

(RETURN_READ)

@DRAW_POINT
0; JMP
(RETURN_DRAW_POINT)

@READ 
0; JMP


(DRAW_POINT)
@16348
D=A
@word
M=D

@pos.y
D=M
@i1
M=D

@32
D=A
@i2
M=D
@MULT
0;JMP
(RETURN_MULT)
@o1
D=M
@word
M=M+D
@pos.x
D=M
@i1
M=D 
@16
D=A
@i2
M=D
@DEVIDE
0; JMP
(RETURN_DEVIDE)
@o1
D=M
@word
M=M+D
@32768
D=A
@word
A=M
M=D
@RETURN_DRAW
0; JMP


(MULT)
@o1
M=0
(MULT_LOOP)
@i2
D=M
@END_MULT
D; JEQ
@i2
M=M-1
@i1
D=M 
@o1
M=M+D
@MULT_LOOP
0;JMP

(END_MULT)
@RETURN_MULT
0; JMP



(DEVIDE)
@o1
M=0
(DEVIDE_LOOP)
@i2
D=M
@i1
MD=M-D
@END_DEVIDE
D;JLT
@o1
M=M+1
@DEVIDE_LOOP
0; JMP

(END_DEVIDE)
@RETURN_DEVIDE
0; JMP



(MOD)
@o1
M=0
(MOD_LOOP)
@i2
D=M
@i1
MD=M-D
@END_MOD
D;JLT
@o1
M=D
@MOD_LOOP
0; JMP

(END_MOD)
@RETURN_MOD
0; JMP






(LEFTPRESSED)
@pos.x
MD=M-1
@RETURN_READ
D; JGT
@pos.x
M=0
@RETURN_READ
0; JMP

(RIGHTPRESSED)
@pos.x
M=M+1
@511
D=A
@pos.x
D=D-M
@RETURN_READ
D; JGT
@511
D=A
@pos.x
M=D
@RETURN_READ
0; JMP

(UPPRESSED)
@pos.y
M=M+1
@RETURN_READ
0; JMP

(DOWNPRESSED)
@pos.y
M=M-1
@RETURN_READ
0; JMP