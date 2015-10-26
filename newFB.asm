// life saving reference 
//http://www.6502.org/tutorials/compare_instructions.html
.pc = $C000
lda #$11
sta $C064
jsr mod3
firstPass:
lda $C064
jsr mod3
rts
secondPass:
lda $C064
jsr mod5
rts
mod3:	
sec			//sets carry flag for complement subtractions (negative add)
sbc #$03	//subtracts 3 from 17 (first pass) 
cmp #$00 	//compares a reg to 0 
beq printFizz	//jumps to print fizz
bmi secondPass 	//if not congruent mod 3 checks mod 5
bne mod3	//keep subtracting 3 until we meet bmi or beq conditions
rts
mod5:		
sec
sbc #$05
cmp #$00 	//compares a reg to 0 
beq printBuzz
bmi printNumber
bne mod5
rts
printFizz:
lda #70
jsr $E716
lda #73
jsr $E716
lda #90
jsr $E716
jsr	$E716
lda #44
jsr $E716
jsr secondPass
rts
printBuzz:
sec
lda #66
jsr $E716
lda #85
jsr $E716
lda #90
jsr $E716
jsr	$E716
lda #44
jsr $E716
jsr counter
rts
printNumber:
lda #$00
ldx $C064
jsr $BDCD
lda #44
jsr $E716
jsr counter
rts
counter:
sec
lda $C064
sbc #$01
sta $C064
cmp #$00
bne firstPass
beq end
rts
end:
brk 
rts