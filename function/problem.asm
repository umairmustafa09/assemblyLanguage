#Problem: Write a program to input two numbers, containing 5 procedures to calculate the sum, product,difference, quotient and remainder. 

.data

inputNumber1: 		.asciiz "Enter first number: "
inputNumber2: 		.asciiz "Enter second number: "
outputAddResult: 	.asciiz "Result of Addition: "
outputMulResult: 	.asciiz "Result of Multiplication: "
outputSubResult: 	.asciiz "Result of Subtraction: "
outputDivResult: 	.asciiz "Result of Division: "
outputRemResult: 	.asciiz "Result of Reminder: "
lineBreak:  		.asciiz "\n"

.text
.globl main
main:
	li $v0, 4
	la $a0, inputNumber1
	syscall
	
	li $v0, 5
	syscall
	move $a1,$v0
	
	li $v0, 4
	la $a0, inputNumber2
	syscall
	
	li $v0, 5
	syscall
	move $a2,$v0
	
	li $v0, 4
	la $a0, lineBreak
	syscall
	
	jal Add
	
	li $v0, 4
	la $a0, outputAddResult
	syscall
	
	li $v0, 1
	move $a0, $v1
	syscall
	
	li $v0, 4
	la $a0, lineBreak
	syscall
	
	jal Mul
	
	li $v0, 4
	la $a0, outputMulResult
	syscall
	
	li $v0, 1
	move $a0, $v1
	syscall
	
	
	li $v0, 4
	la $a0, lineBreak
	syscall
	
	jal Sub
	
		
	li $v0, 4
	la $a0, outputSubResult
	syscall
	
	li $v0, 1
	move $a0, $v1
	syscall
	
	
	li $v0, 4
	la $a0, lineBreak
	syscall
	
	jal Div
		
	li $v0, 4
	la $a0, outputDivResult
	syscall
	
	li $v0, 1
	move $a0, $v1
	syscall
	
	li $v0, 4
	la $a0, lineBreak
	syscall
	
	jal reminder
		
	li $v0, 4
	la $a0, outputRemResult
	syscall
	
	li $v0, 1
	move $a0, $v1
	syscall


	li $v0,10
	syscall 
	
Add:
	add $v1,$a1,$a2
	jr $ra 
	
Mul:
	mul $v1,$a1,$a2
	jr $ra 
	
Sub:
	sub $v1,$a1,$a2
	jr $ra 

Div:
	div $v1,$a1,$a2
	jr $ra 
	
reminder:
	
	rem $v1,$a1,$a2
	jr $ra 	