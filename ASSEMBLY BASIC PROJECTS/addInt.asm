.data
    int1: .word 34
    int2: .word 37
.text
    lw $t0,int1($zero)
    lw $t1,int2($zero)
    
    add $t2,$t1,$t0
    
    li $v0,1
    move $a0,$t2
    #add $a0,$t2,$zero
    syscall
    
