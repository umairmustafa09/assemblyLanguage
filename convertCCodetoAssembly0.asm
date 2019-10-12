# Problem: Write the MIPS code for the following C code
# void main()
# {
#     float float1;
#     printf("Enter a float: ");
#     scanf("%f",&float1); 
#     float1=float1+float1;
#     printf("Number = %f",float1);
# }


.data

num1:		.float 0.0	
inputMsg:	.asciiz "Enter a float:  "
print:  	.asciiz "Number: "


.text
.globl main

main:	

	li $v0, 4			
	la $a0, inputMsg		
	syscall			

	li $v0, 6		
	syscall		
	s.s $f0, num1	
	
	add.s $f0, $f0, $f0
	
	li $v0, 4		
	la $a0, print	
	syscall	
	
	s.s $f0, num1
	
	li $v0, 2
	l.s $f12, num1
	syscall


	li $v0, 10		
	syscall