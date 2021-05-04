// Multiplies R0 and R1 and stores the result in R2.
// The program must compute the product R0*R1 and store the //result in R2. Assuming that
//R0>=0 , R1>=0 , and R0*R1<32768
//we need to add R0 to R0 and save it in R2 loop until count - //R1 is greater //than  than R2

@R2
M=0        // R2 = 0 (since R1 >= 1)

@count
M=0        // set value of count to 0

(LOOP)
	
	@count
	D=M        // value of count is set to D
	@R1
	D=D-M;     // D is count - R1
	@END
	D;JGE      // if count > R1 goto END
	@count
	M=M+1      // cincrement count
	@R0
	D=M        // D = R0
	@R2
	M=M+D      // R2 = R2 + R0
	@LOOP
	0;JMP
(END)
@END
0;JMP
