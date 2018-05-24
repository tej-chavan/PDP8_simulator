fpclac=6550
fpload=6551
fpstor=6552
fpadd=6553
fpmul=6554
*0400			/ start at address 0200
Main,	fpload 
	A	        / add A to Accumulator
	fpload  
	B 	        / multiplies the contents of accumulator with B
	fpstor 
	c               / stores in the memory location pointed by c
	hlt 		/ Halt program
	jmp Main	/ To continue - goto Main
/
/ Data Section
/
*0460 			/ place data at address 0250
A, 	201 		/ A equals -5.0
 	5000
 	0
B, 	210 		/ B equals 9.0
 	4174
        0

C,	0
	0
	0

$Main 			/ End of Program; Main is entry point

