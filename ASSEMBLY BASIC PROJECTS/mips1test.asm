.data
msg1:        .asciiz "Enter first number: "
msg2:        .asciiz "Enter second number: "
result_str:  .asciiz "Greater number is: "

.text
.globl main
main:
    # Prompt and read first number
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0      # Store first number in $t0

    # Prompt and read second number
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0      # Store second number in $t1

    # Compare numbers and store the greater one in $s0
    bgt $t0, $t1, use_first
    move $s0, $t1      # If $t0 is NOT greater, then $t1 is greater or equal
    j done_compare

use_first:
    move $s0, $t0      # $t0 is greater

done_compare:
    # Print the result string
    li $v0, 4
    la $a0, result_str
    syscall

    # Print the greater number from $s0
    li $v0, 1
    move $a0, $s0
    syscall

    # Exit program
    li $v0, 10
    syscall
