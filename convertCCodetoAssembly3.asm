# Write the MIPS code for the following C code
# main()
# {
#     int count=6;
#     while (count > 0)
#     {
#         printf("%d ", count);
#         count--;
#     }
# }

.data

count:		.word 6
num1: 		.word 0
num2: 		.word 1
newline: 	.asciiz "\n"

.text
.globl main

main:	

	lw $t0, count
	lw $t1, num2
loop: 	
	move $a0, $t0
	li $v0, 1
	syscall
	
	li $v0, 4	
	la $a0, newline
	syscall	

	sub $t0, $t0, $t1
	
	bnez $t0, loop

	li $v0, 10		
	syscall
