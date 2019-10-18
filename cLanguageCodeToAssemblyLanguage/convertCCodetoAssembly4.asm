#  Write the MIPS code for the following C code: 
# 	main()
# 	{
# 	int i=1;
# 	while (i!=0)
# 	{
# 	 scanf(“%d”, &i);
# 	 printf(“%d”,i);
# 	}
# 	printf(“\n Program finished”);
# 	} 


.data

newline: 	.asciiz "\n"
printResult: 	.asciiz "\n Program is finished "

.text
.globl main

main:	
	li $t0, 0
	
loop: 
	li $v0, 5
	syscall 
	move $t0, $v0
	
	move $a0, $t0
	li $v0, 1
	syscall
	
		
	li $v0, 4	
	la $a0, newline
	syscall
	
	bnez $t0, loop
	
	li $v0, 4	
	la $a0, newline
	syscall	
	
	li $v0, 4	
	la $a0, printResult
	syscall	
	
	li $v0, 10
	syscall