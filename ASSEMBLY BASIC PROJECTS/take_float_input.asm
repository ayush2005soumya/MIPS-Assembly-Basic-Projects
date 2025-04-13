.data
	prompt:.asciiz "Enter value of PI:"
	zeroAsFloat : .float 0.0
.text
	lwc1 $f4,zeroAsFloat
	
	#prompt
	li $v0,4
	la $a0,prompt
	syscall
	
	#Read user input
	li $v0,6#stored in $f0
	syscall
	
	#store input
	#move $t0,$v0
	
	#diplay message
	li $v0,2
	add.s $f12,$f0,$f4
	syscall
	
	#show age
	#li $v0,1
	#move $a0,$t0
	#syscall
