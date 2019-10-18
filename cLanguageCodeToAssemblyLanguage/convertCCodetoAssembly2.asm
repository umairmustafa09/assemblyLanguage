# Write the MIPS code for the following C code
# void main() {
#   int x, y, z, a1, b1, c1;
#    printf("\nEnter the value of x : ");
#   scanf("%d ", &x);
#    printf("\nEnter the value of y : ");
#   scanf("%d ", &y);
#    printf("\nEnter the value of z : ");
#   scanf("%d", &z);
#    a1 = x * y + z;
#   b1 = x + y * z;
#   c1 = x*y-z;
#   printf("\nValue of a1 = %d",a1);
#   printf("\nValue of b1 = %d",b1);
#   printf("\nValue of c1 = %d",c1);	
# }


.data

x:		.word 0
y:		.word 0	
z:           	.word 0
a1:		.word 0
b1:		.word 0	
c1:           	.word 0
inputXMsg:	.asciiz "Enter value x:  "
inputYMsg:	.asciiz "Enter value y:  "
inputZMsg:	.asciiz "Enter value z:  "
printA1:  	.asciiz "Value of a1 : "
printB1:  	.asciiz "Value of b1 : "
printC1:  	.asciiz "Value of c1 : "
newline: 	.asciiz "\n"

.text
.globl main

main:	

	li $v0, 4			
	la $a0, inputXMsg		
	syscall			

	li $v0, 5		
	syscall	
	sw $v0, x
	lw $t0, x	
	
	
	li $v0, 4			
	la $a0, inputYMsg		
	syscall			

	li $v0, 5		
	syscall
	sw $v0, y	
	lw $t1, y
	
	li $v0, 4			
	la $a0, inputZMsg		
	syscall			

	li $v0, 5		
	syscall
	sw $v0, z	
	lw $t2, z	

	lw $t3, a1
		
	mul $t3, $t0, $t1
	add $t3, $t3, $t2
	
	
	li $v0, 4		
	la $a0, printA1	
	syscall	
	
	
	move $a0, $t3 
	li $v0, 1
	syscall
	
	li $v0, 4	
	la $a0, newline
	syscall	
	
	lw $t3, b1
		
	add $t3, $t0, $t1
	mul $t3, $t3, $t2
	
	
	li $v0, 4		
	la $a0, printB1	
	syscall	
	
	
	move $a0, $t3 
	li $v0, 1
	syscall
	
	li $v0, 4	
	la $a0, newline
	syscall	
	
	lw $t3, c1
		
	mul $t3, $t0, $t1
	sub $t3, $t3, $t2
	
	
	li $v0, 4		
	la $a0, printB1	
	syscall	
	
	
	move $a0, $t3 
	li $v0, 1
	syscall
	

	li $v0, 10		
	syscall