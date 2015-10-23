





.pc = $C000
ldx #$11
stx $C065
jsr fizzbuzz
fizzbuzz:
ldx $C065
jsr div5
jsr count 
rts
count: 
lda $C066 
clc 
adc #$01
cmp $C065
bne fizzbuzz
beq end
rts
div5:
lda $C065
sec
sbc #$05
cmp #$00  
bmi	div3
bne div5
beq buzzTrue
stx $C065
rts
buzzTure:
ldy #$01
sty $C067
print:
lda #$00
ldx $C065
jsr $BDCD
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
end:
brk
rts