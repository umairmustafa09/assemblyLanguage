# Create four variables for subjects of your choice, with some initial values out of 100.Calculate the sum and print marks out of 400 in a good format.

.data

msg0: .asciiz "\nEnter Physics Marks: "
msg1: .asciiz "\nEnter Chemistry Marks: "
msg2: .asciiz "\nEnter Math Marks: "
msg3: .asciiz "\nEnter English Marks: "
msg4: .asciiz "\nNew Physics Marks: "
msg5: .asciiz "\nNew Chemistry Marks: "
msg6: .asciiz "\nNew Math Marks: "
msg7: .asciiz "\nNew English Marks: "
msg8: .asciiz "\nObtain Marks out of 800: "
msg9: .asciiz "\nObtain Marks out of 400: "

physics: .word 0
chem: .word 0
math: .word 0
english: .word 0

.text
.globl main
main:

li $v0,4
la $a0,msg0
syscall

li $v0,5
syscall
sw $v0,physics
lw $t0,physics

li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
sw $v0,chem
lw $t1,chem

li $v0,4
la $a0,msg2
syscall


li $v0,5
syscall
sw $v0,math
lw $t2,math

li $v0,4
la $a0,msg3
syscall


li $v0,5
syscall
sw $v0,english
lw $t3,english


mul $t4, $t1, 2
mul $t5, $t1, 2
mul $t6, $t1, 2
mul $t7, $t1, 2


li $v0,4
la $a0,msg4
syscall

li $v0,1
move $a0,$t4
syscall

li $v0,4
la $a0,msg5
syscall

li $v0,1
move $a0,$t5
syscall

li $v0,4
la $a0,msg6
syscall

li $v0,1
move $a0,$t6
syscall

li $v0,4
la $a0,msg7
syscall

li $v0,1
move $a0,$t7
syscall

add $t4, $t4, $t5
add $t4, $t4, $t6
add $t4, $t4, $t7


li $v0,4
la $a0,msg8
syscall

li $v0,1
move $a0,$t4
syscall

add $t0, $t0, $t1
add $t0, $t0, $t2
add $t0, $t0, $t3

li $v0,4
la $a0,msg9
syscall

li $v0,1
move $a0,$t0
syscall
