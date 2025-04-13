.data
	number1: .double 3.14
	number2: .double 2.71
.text
	ldc1 $f2, number1
	ldc1 $f4, number2
	mul.d $f12, $f2, $f4
	#div.d $f12,$f2,$f4
	#sub.d
	li $v0, 3 
	syscall
	#for float,
	#change .double to .float
	#ldc1 to lwc1
	#mul.d to mul.s
	