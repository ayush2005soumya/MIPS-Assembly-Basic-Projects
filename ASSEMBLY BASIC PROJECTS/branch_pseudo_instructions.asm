.data
	message: .asciiz"hi,how are you?"
.text
	main:
		addi $s0,$zero,13
		addi $s1,$zero,16
	
		bgt $s0,$s1,displayhi
		blt $s0,$s1,displayhi
		bgtz $s0,displayhi
		#once message will be printed for other branches are skipped if one is returning true
	#end process
	li $v0,10
	syscall
	
	displayhi:
		li $v0,4
		la $a0,message
		syscall
		
