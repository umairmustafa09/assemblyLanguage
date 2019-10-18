#Problem: Write the MIPS code for the following C code: 
main()
# {
#  int i=0,j=0;
#  int g=8;
#  int h=3;
#  printf(“Enter the value for i ”);
#  scanf(“%d”,&i);
#  printf(Enter value for j: ”);
#  scanf(“%d”,&i);
# if(i==j)
#  f=g+h;
# else
#  f=g-h;
# printf(“The result is: %d”,f);
# } 

.data

printI: 	.asciiz "Enter the value for i: "
printJ:		.asciiz "Enter value for j: " 
printResult: 	.asciiz "The result is "

.text
.globl main

main:	
	li $t0, 0
	li $t1, 0
	li $t2, 8
	li $t3, 3
	li $t4, 0
	
	li $v0, 4	
	la $a0, printI
	syscall	
	
	li $v0, 5
	syscall 
	move $t0, $v0
	
	li $v0, 4	
	la $a0, printJ
	syscall	
	
	li $v0, 5
	syscall 
	move $t1, $v0
	
	beq $t0, $t1, ifEqual
	sub $t4, $t2, $t3 
	b printNow
	
	
ifEqual:
	add $t4, $t2, $t3	

printNow: 
	move $a0, $t4
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall