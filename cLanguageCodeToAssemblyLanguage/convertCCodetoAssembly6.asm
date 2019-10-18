#Problem: Write the MIPS code for the following C code:
main()
#	{
#	 int count=1;
#	 while (count <=6)
#	 {
#	 printf("%d ", count);
#	 count++;
#	 }
#	} 

.data

newline: 	.asciiz "\n"

.text
.globl main

main:	
	li $t0, 1
	li $t1, 6
loop: 	
	move $a0, $t0
	li $v0, 1
	syscall
	
	li $v0, 4	
	la $a0, newline
	syscall	

	addi $t0, $t0, 1
	
	ble $t0, $t1, loop