.data

.text
	addi $s0,$zero,14
	addi $s1,$zero,2
	
	div $s2,$s0,$s1
	
	li $v0,1
	move $a0,$s2
	syscall