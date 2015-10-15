//No idea what to do for the start code. 
//borrowed syntax from dwheeler.com
.pc = $C000 //
//jsr $E716
lda #67	    //this loads capital C into register
jsr $E716   //prints the letter 
lda #72 	//loads H
jsr $E716	//prints H
lda #65		//;loads A
jsr $E716   //; prints A
lda #82		//;load R
jsr $E716	//;print R
lda #76		//;load L
jsr $E716 	//;print L
lda #79		//;load O
jsr $E716	//;print O 
lda #84		//;load T
jsr $E716 	//;print T
jsr $E716 	//;print T 
lda #69		//;load E
jsr $E716 	//;print E
rts			//;return from subroutine