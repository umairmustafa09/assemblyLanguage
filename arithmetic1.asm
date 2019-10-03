# problem: Do Math like ((32+52)+58*3)+57

.text
.globl main
main:
li $t0, 32
li $t1, 52
li $t2, 58
li $t3, 3
li $t4, 57

add $t0, $t0, $t1

mul $t2, $t2, $t3
add $t0, $t0, $t2

add $t0, $t0, $t4

li $v0, 1
move $a0, $t0

syscall 
li $v0, 10
syscall

  
 