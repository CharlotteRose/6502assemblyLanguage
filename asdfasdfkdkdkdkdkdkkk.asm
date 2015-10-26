//Charlotte Rose Hamilton cs215 Fall 2015
//Process API
//The number in question will be loaded into the a-register
//stored into a memory locations, namely C064
//The controll loop is called "loop"
//It calls the mod 3 and mod 5 "functions" for both of these 
//the number from C064 is loaded into the a register
//while in the function the respective value will be subtracted (3 or 5)
// there are three test conditions, bne, bmi, beq 
//while not equal to 0 the number is continually subtracted from the
//value in the a register. If we get to a negative number
//it is not congruent modulo 3 or 5 , so we branch back to the control loop
// and jump to the next routine. 
//if it reaches 0, it is congruent we jump to a store routine that 
//acts a boolean operator, after checking both 3 and 5 we jump back tot he control 
//loop and check their flags (the stored 1 or 0 from the mod function)
//if both true we jump to print FizzBuzz, otherwise it jumps to the 
//respective print function for the value. if both are false we jump  
// to the traditional print statement and print the number then decrement it.  
// C064 = number we are checking
// C065 = fizz true; mod3 true  
// C066 = buzz true; mod5 true
.pc = $C000
ldx #$11	//loads 17
stx $C064	//stores 17
jsr loop	//jumps to loop
loop:
jsr mod3	//jumps tp check fizz
jsr mod5 	//jumps to check buzz
jsr printControl
lda $C064
sec
sbc #$01
sta $C064
lda $C064
cmp #$00
bne loop
printControl:
cpx #$01	//compares flag to true (1)
beq printFizz //jumps to print routine 
cpy #$01	//same as above
beq	printBuzz //same as above
lda $C064
jsr print 
mod3:	
lda $C064	//loads 17
sec			//sets carry flage for complement subtractions (negative add)
sbc #$05	//buntracts 3 from 17 (first pass) 
cmp #$00 
bne mod3
beq fizzTrue
rts
mod5:
lda $C064
sec
sbc #$05
cmp #$00  
bne mod5
beq buzzTrue
rts
fizzTrue:
ldy #$01
sty $C065
rts
buzzTrue:
ldy #$01
sty $C066
rts
print:
lda #$00
ldx $C065
jsr $BDCD
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
printBuzz:
lda #66
jsr $E716
lda #85
jsr $E716
lda #90
jsr $E716
jsr	$E716
rts