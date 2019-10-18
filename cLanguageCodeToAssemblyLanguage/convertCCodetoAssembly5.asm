# Probelem: Write the MIPS code for the following C code: 
# int main()
# {
#  int num, count, sum = 0;
#  printf("Enter a positive integer: ");
#  scanf("%d", &num);
#  for(count = 1; count <= num; count++)
#  {
#  sum =sum+count;
#  }
#  printf("Sum = %d", sum);
#  return 0;
# } 

.data

newline: 	.asciiz "\n"
printN: 	.asciiz "Enter a positive integer: "
printResult: 	.asciiz "\nSum = "

.text
.globl main

main:	
	li $t0, 0  # num
	li $t1, 1  # count 
	li $t2, 0  # sum
	
	li $v0, 4	
	la $a0, printN
	syscall
	
	li $v0, 5
	syscall 
	move $t0, $v0
	
condition:
	ble $t1, $t0, loop
	bgt $t1, $t0, exit
	
loop: 	

	add $t2, $t2, $t1
	add $t1, $t1,1
	b condition

exit: 
	li $v0, 4	
	la $a0, newline
	syscall	
	
	li $v0, 4	
	la $a0, printResult
	syscall	
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall