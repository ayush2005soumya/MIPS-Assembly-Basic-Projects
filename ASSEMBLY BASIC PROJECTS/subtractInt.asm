.data
    int1: .word 34
    int2: .word 35
.text
    lw $t0,int1($zero)#can also use $s0
    lw $t1,int2($zero)#can also use $s1
    
    sub $t2,$t1,$t0
    
    li $v0,1
    move $a0,$t2
    syscall
    
