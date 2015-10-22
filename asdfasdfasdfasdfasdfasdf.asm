.pc = $C000
ldx #$11	//loads value 17
stx $C064	//stores 17 in memory
jsr printBuzz
jsr printFizz
jsr	print 
jsr printFizzBuzz
rts
loop:
ldx $C064
jsr print 

print:
lda #$00	//loads high byte of 0
ldx #$11	//loads 17 into A reg 
jsr $BDCD
jsr loop
printBuzz:
lda #66
jsr $E716
lda #85
jsr $E716
lda #90
jsr $E716
jsr	$E716
jsr loop
printFizz:
lda #70
jsr $E716
lda #73
jsr $E716
lda #90
jsr $E716
jsr	$E716
jsr loop
printFizzBuzz:
lda #70
jsr $E716
lda #73
jsr $E716
lda #90
jsr $E716
jsr	$E716
jsr printBuzz
jsr loop