.data
	mdArray:.word 2,5,8
		.word 3,7,10
		.word 1,4,11
	size: .word 3
	.eqv DATA_SIZE 4
.text
	main:
		la $a0,mdArray
		lw $a1,size
		jal sumDiagonal
		move $a0,$v0 #v0 ha sthe sum
		
		li $v0,1
		syscall
		
		#end
		li $v0,10
		syscall
		
	sumDiagonal:
		li $v0,0 #sum=0
		li $t0,0 #t0 as the index
		
		sumloop:
			mul $t1,$t0,$a1              #t1 =r owindex * colsize
			add $t1,$t1,$t0               # +colindex
			mul $t1,$t1,DATA_SIZE        # *DATA_SIZE
			add $t1,$t1,$a0               # +baseAddress
			
			lw $t2,($t1)
			add $v0,$v0,$t2 #sum+=mdArray[i][i]
			
			addi $t0,$t0,1 #i++
			blt $t0,$a1,sumloop #id i<size then loop again
			
	jr $ra
			