MVI B, 5            ; size of the list
LOOP1: LXI H, 0000  ; getting the first address in HL pair
MVI C, 4            ; C has size of list - 1
	LOOP2: MOV A, M   ; getting data from memory
	INX H             ; getting to next address
	CMP M             ; comparing data pointed by HL with AC
	JC NEXT           ; if data at AC is small goto NEXT
	MOV B, A          ; swapping A with data pointed by HL pair
	MOV A, M
	MOV M, B
	DCX H             ; putting smaller data (i.e now at AC) at previous address
	MOV M, A
	INX H             ; coming back to current address
	NEXT: DCR C       ; continue the loop
	JNZ LOOP2
DCR B               ; continue this loop
JNZ LOOP1
HLT