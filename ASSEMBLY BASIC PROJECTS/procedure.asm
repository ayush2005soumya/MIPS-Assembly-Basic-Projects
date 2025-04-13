.data
	message:.asciiz"HELLO COMMUNITY!\n"
.text
	main:
		jal displayMessage
		
	li $v0,10
	syscall		
		
	displayMessage:
		li $v0,4
		la $a0,message
		syscall
		
		jr $ra
