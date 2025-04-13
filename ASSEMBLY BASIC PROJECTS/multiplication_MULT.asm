.data
    #int1: .word 34
    #int2: .word 35
.text
    #lw $t0,int1($zero)
    #lw $t1,int2($zero)
    addi $t0,$zero,1300
    addi $t1,$zero,20
    
    mult $t1,$t0
    
    mflo $s0
    
    li $v0,1
    move $a0,$s0
    #add $a0,$t2,$zero
    syscall
    #restrictions : Can only multiply 2 16 bit numbers