# convert c code to assembly
# Input number
# If number = 0 then base_case
# i=0
# max=num
# fact=num
# fact:
#  fact=fact*i
# i++
#  if i<max repeat fact
#  else output_result
# base_case:
#  fact=0
# output_result:
#  display fact as result 

.data

inputMsg: 	.asciiz "Enter number: "
output:		.asciiz "factorial is: " 

.text
.globl main
main:
	li $t1, 1 		# value for i.

	li $v0,4
	la $a0,inputMsg
	syscall

	li $v0, 5
	syscall 
	move $t0, $v0
	
	beq $t0, 0, end
	
	move $t1, $t0
		
loop:
	sub $t1, $t1, 1
	mul $t0, $t0, $t1
 	bne $t1, 1, loop 
	
end:
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0,1
 	move $a0,$t0
 	syscall

 	li $v0, 10
 	syscall 