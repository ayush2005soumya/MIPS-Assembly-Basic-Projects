.data
	newLine:.asciiz "\n"
.text
	main:
		addi $s0,$zero,10
		
		jal increaseMyregister
		
		li $v0,4
		la $a0,newLine
		syscall
		
		jal printValue
		
	#escape infinite loop	
	li $v0,10
	syscall	
	
	increaseMyregister:
		addi $sp,$sp,-8
		sw $s0,0($sp)
		sw $ra,4($sp)
		
		addi $s0,$s0,30
		
		#nested procedure
		jal printValue
		
		lw $s0,0($sp)
		lw $ra,4($sp)
		addi $sp,$sp,4
		
		jr $ra
		
	printValue:
		li $v0,1
		move $a0,$s0
		syscall
		
		jr $ra