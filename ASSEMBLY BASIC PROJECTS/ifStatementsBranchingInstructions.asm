.data
	message: .asciiz"The numbers are equal"
	message2:.asciiz"nothing happened"
.text
	main:
		addi $t0,$zero,5
		addi $t1,$zero,51
		
		beq $t0,$t1,numbersEqual#branch if equal
		bne $t0,$t1,numbersnotEqual#branch if not equal
	#b: takes no condn, only goes to the label
	#b numbersEqual
		#end process
		li $v0,10
		syscall
	
	numbersEqual:
		li $v0,4
		la $a0,message
		syscall
	numbersnotEqual:
		li $v0,4
		la $a0,message2
		syscall