# convert c code to assembly
# Input m,n
# i=1
# result=1
# loop:
#  if i>n display_result
#  result=result*m
#  i++
#  repeat loop
# display_result:
#  display result on screen 

.data

inputBase: 	.asciiz "Enter base number: "
inputPower: 	.asciiz "Enter base number: "
output:		.asciiz "m^n is: " 

.text
.globl main
main:
	li $v0,4
	la $a0, inputBase
	syscall

	li $v0, 5
	syscall 
	move $t0, $v0
	
	li $v0,4
	la $a0, inputPower
	syscall

	li $v0, 5
	syscall 
	move $t1, $v0

	move $t3, $t0
	
	li $t2, 1
		
loop:
	add $t2, $t2, 1
	mul $t0, $t0, $t3
 	bne $t2, $t1, loop 
	
end:
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0,1
 	move $a0,$t0
 	syscall

 	li $v0, 10
 	syscall 