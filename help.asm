//subtract  by three 
// *************  H<-Low byte to high 
.pc = $C000
jsr $E544	//clear the screem
ldx #$0A	//loads 0 into the X reg
stx $C064
jsr div5	//goes to sub routine 
div5: 
lda $C064
sec 	 	//set carry flag to for complement 
sbc #$03	//subtract the number 3 from A reg
cmp #$0		//compare 0 to A reg 
jmp	print
sta $C064	// increment y to keep track of number
bne div5	//go back to top of loop
bmi print 
rts			//end task 
print:		//label for print routine 
lda #$00	//get A reg value ( 10 )
ldx $C064
jsr $BDCD	//go to sub routine for printing
rts			//end task 