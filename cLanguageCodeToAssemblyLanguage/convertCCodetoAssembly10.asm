# Ask user to enter 10 array elements. Then print whether the elements entered were even or
# odd. Display the results in reverse order. Format is: 

.data

array:		.space 40
newline: 	.asciiz "\n"
input: 		.asciiz "Enter 10 elements to store in array: \n"
odd:		.asciiz "odd "
even:     	.asciiz "even "
sNo: 		.asciiz "S.No  "
value: 		.asciiz "Value "
status: 	.asciiz "status "

.text
.globl main
main:
	li $v0, 4 	
	la $a0, input
	syscall
	
	li $t0, 1	 
	la $s0, array
	
loopForInput: 
	
	li $v0, 5 	
	syscall
	add $t0, $t0, 1
	sw $v0, ($s0)
	add $s0, $s0, 4
	ble $t0, 10, loopForInput  
	
	
	li $t4, 2
	li $t0, 10
	sub $s0,$s0,4
	
	 	
 	li $v0, 4
	la $a0, sNo
	syscall
	
	li $v0, 4
	la $a0, value
	syscall
	
	li $v0, 4
	la $a0, status
	syscall
		
loopForCheck:

	lw $t1, ($s0) 
	div $t1, $t4
	
 	mfhi $s1
 	
 	li $v0,1
 	move $a0,$t0
 	syscall
	
	li $v0,1
 	move $a0,$t1
 	syscall
 	
 	sw $t1, ($s0)
	sub $s0, $s0, 4
	sub $t0, $t0, 1
	
	bne $s1, 0 , outputOdd
	beq $s1, 0 , outputEven
	
	bgt $t0, 0, loopForCheck 
	b exit
	
outputOdd:
	li $v0, 4
	la $a0, odd
	syscall
 	
 	li $v0,4
 	la $a0,newline
 	syscall
 	
 	
 	beq $t0, 0 , exit 
 	b loopForCheck
 	
 outputEven: 
 	
 	li $v0, 4
	la $a0, even
	syscall
	
 	li $v0,4
 	la $a0,newline
 	syscall
 	
 	beq $t0, 0 , exit
 	b loopForCheck
 	
 	
exit:
 	li $v0, 10
 	syscall 

	
	
	
