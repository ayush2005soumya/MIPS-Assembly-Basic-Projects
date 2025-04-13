.data
	prompt:.asciiz "Hello, "
	userInput: .space 20
.text
	main:
		#getting user input text
		li $v0,8
		la $a0,userInput
		li $a1,20
		syscall
		
		#displays prompt
		li $v0,4
		la $a0,prompt
		syscall
		
		#displays the name
		li $v0,4
		la $a0,userInput
		syscall
	
	
	#tell system this is the end of main
	li $v0,10
	syscall