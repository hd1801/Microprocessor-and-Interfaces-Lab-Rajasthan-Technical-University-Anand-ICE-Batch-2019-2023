LDA 0000H
ANI 01
JZ EVEN
MVI A,01
JMP STORE
EVEN: MVI A,02
STORE: STA 0001
HLT


