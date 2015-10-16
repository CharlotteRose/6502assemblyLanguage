.pc = $C000
lda #$00
sta $C064
lda #$00
sta $C066
ldx #$0A
stx $C065
jsr fizzbuzz
fizzbuzz:
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
jsr print
cmp #$00  
bne div5
stx $C065
rts
print:
lda $C064
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