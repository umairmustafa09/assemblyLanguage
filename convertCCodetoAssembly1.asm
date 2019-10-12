#Problem: Write the MIPS code for the following C code
# void main() {
#    int length, width, area;
#  
#    printf("\nEnter the width of rectangle: ");
#    scanf("%d", &width);
#  
#    printf("\nEnter the length of rectangle: ");
#    scanf("%d", &length);
#  
#    area = length * width;
#    printf("\nArea of Rectangle : %d ", area);
# }


.data

length:		.word 0
width:		.word 0	
area:           .word 0
inputLengthMsg:	.asciiz "Enter a length:  "
inputWidthMsg:	.asciiz "Enter a width:  "
print:  	.asciiz "Area is : "


.text
.globl main

main:	

	li $v0, 4			
	la $a0, inputLengthMsg		
	syscall			

	li $v0, 5		
	syscall	
	sw $v0, length
	lw $t0, length	
	
	
	li $v0, 4			
	la $a0, inputWidthMsg		
	syscall			

	li $v0, 5		
	syscall
	sw $v0, width	
	lw $t1, width	
	
	mul $t0, $t0, $t1
	
	li $v0, 4		
	la $a0, print	
	syscall	
	
	
	move $a0, $t0 
	li $v0, 1
	syscall


	li $v0, 10		
	syscall