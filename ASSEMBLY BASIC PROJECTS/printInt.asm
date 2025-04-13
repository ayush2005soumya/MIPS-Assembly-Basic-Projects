.data
    myMessage: .word 34
.text
    li $v0,1
    lw $a0,myMessage
    syscall
    
    #lw $t0,myMessage($zero)
    #li $v0,1
    #add $a0,$t0,$zero
    #syscall
    
