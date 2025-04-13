.data
	message: .asciiz "the number is less then the other"
.text
main:
	addi $t0,$zero,51
	addi $t1,$zero,51
	
	slt $s0,$t0,$t1
	bne $s0,$zero,printmessage
	
	#end of process
	li $v0,10
	syscall
	
	printmessage:
		li $v0,4
		la $a0,message
		syscall