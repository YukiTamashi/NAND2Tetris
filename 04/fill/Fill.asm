// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// This assembly is bad, i'm not fixing this.
(CHECK)
@KBD
D=M
@CLEAR
D;JEQ
@FILL
0;JMP


(CLEAR)
@SCREEN
D=A
@R0
M=D
@8192
D=-A
@R1
M=D
(CSTART)
@R0
D=M
A=D
M=0
@R0
M=M+1
@R1
M=M+1
@R1
D=M
@CSTART
D;JLT
@CHECK
0;JMP

(FILL)
@SCREEN
D=A
@R0
M=D
@8192
D=-A
@R1
M=D
(FSTART)
@R0
D=M
A=D
M=-1
@R0
M=M+1
@R1
M=M+1
@R1
D=M
@FSTART
D;JLT
@CHECK
0;JMP
