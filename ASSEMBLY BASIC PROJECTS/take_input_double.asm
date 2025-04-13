.data
	prompt:.asciiz "Enter value of e:"
.text
	#display prompt
	li $v0,4
	la $a0,prompt
	syscall
	
	#get the double as input
	li $v0,7#stored in $f0
	syscall
	
	#display input
	li $v0,3
	add.d $f12,$f0,$f10
	syscall