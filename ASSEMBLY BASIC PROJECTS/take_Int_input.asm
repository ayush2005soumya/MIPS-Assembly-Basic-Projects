.data
	prompt:.asciiz "Enter your age:"
	message:.asciiz"\nYour age is "
.text
	#prompt
	li $v0,4
	la $a0,prompt
	syscall
	#get age
	li $v0,5
	syscall
	#store age
	move $t0,$v0
	#diplay message
	li $v0,4
	la $a0,message
	syscall
	#show age
	li $v0,1
	move $a0,$t0
	syscall