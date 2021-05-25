;exp 5 substraction of 2 16 bit no
;step 1: load first 16 bit no in  HL
;step 2: save first 16 bit no in DE
;step 3: load second 16 bit no in HL
;step 4: load lower byte of first no in A
;step 5: substract lower byte of second no
;step 6: store result in L register
;step 7: load higher byte of first no in A
;step 8: substract value to accumulator with borrow
;step 9: store result in H
;step 10: load value of hl pair in memory location
;step 11: terminate the progr
lhld 0001
xchg 
lhld 0003
mov A,E
SUB L
mov L,A
mov A,D
SBB H
mov H,A
SHLD 0005
hlt