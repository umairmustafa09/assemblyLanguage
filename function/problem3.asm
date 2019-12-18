# Write a Program to calculate m^n using recursive procedure calls. 

.data
inputmsgForNumber: .asciiz "Enter a number: "
inputmsgForPower: .asciiz "Enter a powser of a number: "
outputmsg: .asciiz "Factorial: "
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

 	la $a0,inputmsgForPower
 	li $v0,4
 	syscall

 	li $v0,5
 	syscall
 	move $a3,$v0
 	beq $a3, 0, zeroCase
 
 	jal power

 	la $a0,outputmsg
 	li $v0,4
 	syscall

 	la $v0,1
 	move $a0,$v1
 	syscall

 	li $v0,10
 	syscall

power:
 	sub $sp, $sp,4
 	sw $ra, ($sp)
 	sub $a3,$a3,1
 	beq $a3,0,basecase

 	jal power
 	mul $a1,$a1,$a2
 	move $v1,$a1

basecase:
 	lw $ra, ($sp)
 	add $sp,$sp,4
 	jr $ra 
 
zeroCase:
 	li $t1, 1
 	la $v0,1
 	move $a0,$t1
 	syscall

 	li $v0,10
 	syscall
