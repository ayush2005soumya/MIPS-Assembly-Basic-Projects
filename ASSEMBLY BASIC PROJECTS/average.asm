.data
	array: .word 10,2,9
	length: .word 3
	sum: .word 0
	average: .word 0
.text
	main:
		la $t0,array
		li $t1,0
		lw $t2,length
		li $t3, 0
		sumloop:
			lw $t4,($t0)
			add $t3,$t3,$t4
			
			add $t1,$t1,1
			add $t0,$t0,4
			blt $t1,$t2,sumloop
		sw $t3,sum
		
		li $v0,1
		move $a0,$t3
		syscall
		
		div $t5,$t3,$t2
		sw $t5,average
		
		li $v0,1
		move $a0,$t5
		syscall
		
		li $v0,10
		syscall