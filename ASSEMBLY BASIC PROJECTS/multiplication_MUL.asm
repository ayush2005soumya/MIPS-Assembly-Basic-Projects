.data
    int1: .word 34
    int2: .word 3
.text
    lw $t0,int1($zero)
    lw $t1,int2($zero)
    addi $s0,$zero,13
    addi $s1,$zero,2
    mul $t2,$t1,$t0
    
    li $v0,1
    move $a0,$t2
    #add $a0,$t2,$zero
    syscall
    #restrictions : Can only multiply 2 16 bit numbers
