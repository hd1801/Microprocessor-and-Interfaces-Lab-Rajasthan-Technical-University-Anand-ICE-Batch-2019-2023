;step 1: load first 16 bit no in  HL
;step 2: save first 16 bit no in DE
;step 3: load second 16 bit no in HL
;step 4: load lower byte of first no in A
;step 5: add lower byte of second no
;step 6: store result in L register
;step 7: load higher byte of first no in A
;step 8: add higher bytes with carry
;step 9: store result in H
;step 10: load value of hl pair in memory location
;step 11: terminate the program
LHLD 0001
XCHG 
LHLD 0003
MOV A,E
ADD L
MOV L,A
MOV A,D
ADC H
MOV H,A
SHLD 0005
hlt