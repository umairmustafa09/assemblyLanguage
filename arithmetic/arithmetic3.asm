# problem: Do Math like ((52*8)*12+8)-(18+116)+(15*2) 

.text
.globl main
main:
li $t0, 52
li $t1, 8

mul $t0, $t0, $t1

li $t1, 12
li $t2, 8

mul $t0, $t0, $t1
add $t0, $t0, $t2

li $t1, 18
li $t2, 116

add $t1, $t1, $t2
sub $t0, $t0, $t1

li $t1, 15
li $t2, 2

mul $t1, $t1, $t2

add $t0, $t0, $t1

li $v0, 1
move $a0, $t0

syscall 
li $v0, 10
syscall

  
 