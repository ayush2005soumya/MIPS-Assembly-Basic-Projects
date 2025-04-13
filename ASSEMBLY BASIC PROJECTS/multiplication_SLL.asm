.data
    #int1: .word 34
    #int2: .word 35
.text
    #lw $t0,int1($zero)
    #lw $t1,int2($zero)
    addi $t0,$zero,13    
    sll $t1,$t0,3
    
    li $v0,1
    move $a0,$t1
    #add $a0,$t2,$zero
    syscall
    #restrictions : Can only multiply 2 16 bit numbers
