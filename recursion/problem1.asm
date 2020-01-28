#  Write a procedure which takes a number as an argument and tells whether the number is prime or not. 

.data
inputmsgForNumber: .asciiz "Enter a number: "
outputmsgTrue: .asciiz "Numebr is prime"
outputmsgFalse: .asciiz "Numebr is not prime"

.text
.globl main
main:
 	la $a0,inputmsgForNumber
 	li $v0,4
 	syscall

 	li $v0,5
 	syscall
 	move $a1,$v0
 	move $a2, $v0
 	beq $a1, 0, zeroCase
	beq $a1, 2, twoCase
 	 
 	jal function

 	la $a0,outputmsgTrue
 	li $v0,4
 	syscall
 	
 	li $v0,10
 	syscall

function:
	sub $a2,$a2,1
	beq $a2,1,baseCase
	div $a1,$a2
	mfhi $s0
	beq $s0, 0, notPrime 
 	sub $sp, $sp,4
 	sw $ra, ($sp)
 	
 	jal function


baseCase:
 	lw $ra, ($sp)
 	add $sp,$sp,4
 	jr $ra 

notPrime:
	la $a0,outputmsgFalse
 	li $v0,4
 	syscall 
 	
 	li $v0,10
 	syscall
 	
zeroCase:
	la $a0,outputmsgFalse
 	li $v0,4
 	syscall 

 	li $v0,10
 	syscall
 	
 twoCase:
	la $a0,outputmsgTrue
 	li $v0,4
 	syscall 

 	li $v0,10
 	syscall
