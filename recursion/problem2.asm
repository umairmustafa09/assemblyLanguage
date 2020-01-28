# problem: You are required to write MIPS Program for Fibonacci series using Stack.
.data
inputmsgForNumber: .asciiz "Enter a number of term you want to print: "
outputmsg: .asciiz "Fibonacci Series:  "
space: .asciiz " "

.text
.globl main
main:
 	la $a0,inputmsgForNumber
 	li $v0,4
 	syscall

 	li $v0,5
 	syscall
 	move $a1,$v0
 	beq $a1, 0, zeroCase
 	 
 	la $a0,outputmsg
 	li $v0,4
 	syscall
 	  
 	#variable to calculate fabonacci 
 	li $t0, 0	#count
 	li $t1, 0		
 	li $t2, 1
 	li $t3, 0
 	
 	jal function


 	li $v0,10
 	syscall
	
function:
	add $t0,$t0,1
	
	la $v0,1
 	move $a0,$t3
 	syscall
 	
 	la $a0,space
 	li $v0,4
 	syscall 
 	
 	move $t1, $t2
 	move $t2, $t3
 	add $t3, $t1, $t2
 	
	beq $a1,$t0, basecase
 	sub $sp, $sp,4
 	sw $ra, ($sp)
 	
 	jal function
 	
 	
basecase:
 	lw $ra, ($sp)
 	add $sp,$sp,4
 	jr $ra 
 	
		
zeroCase:
 	li $t1, 0
 	la $v0,1
 	move $a0,$t1
 	syscall

 	li $v0,10
 	syscall
