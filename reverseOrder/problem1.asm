# Problem: Write a program in MIPS to reverse the array without using another array. Array should be of type float and it should contain only 10 values. 

.data
arr:  .float 24.0,87.0,34.0,23.0,42.0,67.0,76.0,12.0,92.0,85.0
commaSeprated:  .ascii", "

.text
.globl main
main:
        la $t0, arr
        la $t1, arr

        addi $t1,$t1,36
        li $t3,1
loop:
        l.s $f0,($t0)
        l.s $f1,($t1)

        s.s $f1,($t0)
        s.s $f0,($t1)

        add $t0,$t0,4
        sub $t1,$t1,4
        add $t3,$t3,1
        bne $t3,6,loop

        la $t4, arr
        li $t5, 1
        
loopForPrint:
        li $v0,2
        l.s $f1,($t4)
        mov.s $f12,$f1
        syscall

        li $v0,4
        la $a0,commaSeprated
        syscall

        add $t4,$t4,4
        add $t5,$t5,1
        bne $t5,11,loopForPrint

        li $v0,10
        syscall