.pc = $C000
jsr $E544
lda #$0A	//loads 10 in A reg
sta #$C064	//stores 10 at location 100
jsr fizzBuzz
mod5:
ldx #$00

printBuzz:
lda #66
jsr $E716
lda #85
jsr $E716
lda #90
jsr $E716
jsr	$E716
rts
printFizz:
lda #71
jsr $E716
lda #74
jsr $E716
lda #90
jsr $E716
jsr	$E716
rts
printFizzBuzz:
lda #66
jsr $E716
lda #85
jsr $E716
lda #90
jsr $E716
jsr	$E716
rts