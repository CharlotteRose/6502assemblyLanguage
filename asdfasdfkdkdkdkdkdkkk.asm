.pc = $C000
lda #$00
sta $C064
ldx #$0A
stx $C065
jsr div5 
div5:
ldx $C065
txa 
sec
sbc #$05
cmp #$00 
dex
cpx #$00	 
stx $C065
bne start
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