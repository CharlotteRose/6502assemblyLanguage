.pc = $C000 //;Jump start for code 
	jsr $E544
	lda #0
	sta $D021
	lda #2
	ldx #2
	sta $D800,x
	sta $400,x
	inx
	inx
	sta $D800,x
	sta $400,x
	inx
	inx
	sta $D800,x
	sta $400,x
	rts