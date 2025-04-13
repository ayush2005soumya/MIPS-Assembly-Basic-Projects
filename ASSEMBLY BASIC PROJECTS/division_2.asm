.data

.text
	addi $s0,$zero,14
	addi $s1,$zero,3
	
	#div $s2,$s0,$s1
	#div $s2,$s0,7
	div $s0,$s1
	mflo $t0#quotient
	mfhi $t1#remainder
	
	li $v0,1
	move $a0,$t1
	syscall