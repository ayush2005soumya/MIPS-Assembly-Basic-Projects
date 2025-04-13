.data
    X: .double 4.657
    Y: .double 0.0
.text
    ldc1 $f2,X
    ldc1 $f0,Y
    
    li $v0,3
    add.d $f12,$f2,$f0
    syscall
    
