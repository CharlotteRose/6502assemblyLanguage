52//fizzBuzz my gangster homie dawg
.pc = $C000	//jumps down to program memory
jsr #E544
lda #10
sec
sbc #3
msr $E716
cmp #0
bne 49157 //60
bmi 49162
lda #
