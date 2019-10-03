# Prompt the user to input the marks of Physics, Chemistry, Maths & English out of hundred. Double the marks of each subject and then print new marks on screen. Also show the sum of all the new marks out of 800 and then the old marks out of 400.

.data
msg0: .asciiz "\nEnter Bio Marks: "
msg1: .asciiz "\nEnter Urdu Marks: "
msg2: .asciiz "\nEnter Science Marks: "
msg3: .asciiz "\nEnter Algebra Marks: "
msg9: .asciiz "\nObtain Marks out of 400: "

Bio: .word 0
Urdu: .word 0
Science: .word 0
Algebra: .word 0

.text
.globl main
main:

li $v0,4
la $a0,msg0
syscall

li $v0,5
syscall
sw $v0,Bio
lw $t0,Bio

li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
sw $v0,Urdu
lw $t1,Urdu

li $v0,4
la $a0,msg2
syscall


li $v0,5
syscall
sw $v0,Science
lw $t2,Science

li $v0,4
la $a0,msg3
syscall


li $v0,5
syscall
sw $v0,Algebra
lw $t3,Algebra


add $t0, $t0, $t1
add $t0, $t0, $t2
add $t0, $t0, $t3

li $v0,4
la $a0,msg9
syscall

li $v0,1
move $a0,$t0
syscall