# Problem: Write a program that inputs an integer value and prints the number with its digits reversed. For example, given the number 1234, the program should print 4321. 

.data
msg1:.asciiz"Enter number to reverse: "
msg2:.asciiz"Number in reverse order : "
.text
.globl main
main:
        li $t1,0
        li $t2,10

        li $v0,4
        la $a0,msg1
        syscall

        li $v0,5
        syscall
        move $t1,$v0



loop:
        mul $s1,$s1,10
        div $t1,$t2
        mfhi $s2
        mflo $t1
        add $s1,$s1,$s2
        bne $t1,0,loop

 
        li $v0,4
        la $a0,msg2
        syscall

        li $v0,1
        move $a0,$s1
        syscall

        li $v0,10
        syscall