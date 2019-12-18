# problem: Do Math like ( ( 9 - 8 ) * 12 + ( 16 - 5 ) - ( 5 * 2 ) )

.text
.globl main
main:
li $t0, 9
li $t1, 8

sub $t0, $t0, $t1

li $t1, 12

mul $t0, $t0, $t1

li $t1, 16
li $t2, 15

sub $t1, $t1, $t2

add $t0, $t0, $t1

li $t1, 5
li $t2, 2

mul $t1, $t1, $t2

sub $t0, $t0, $t1

li $v0, 1
move $a0, $t0

syscall 
li $v0, 10
syscall

  
 