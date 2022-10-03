.data
arr1: .word 4, 1, 2, 1, 2
arr2: .word 1, 2, 3, 1, 3, 2, 12 
arr3: .word 3, 6, 3, 6, 7, 8, 8, 5, 5 
size1: .word 5
size2: .word 7
size3: .word 9
result1: .string "result 1: "
result2: .string "result 2: "
result3: .string "result 3: "
space: .string " "
enter: .string "\n"
.text
main:
	la a1, arr1
	lw a2, size1
	jal ra, printarray
	la a0, enter                                   
    li a7, 4
    ecall
	la a0, result1                #load result1 and print                   
    li a7, 4
    ecall
	jal ra, singlenumber
	li a7, 1
    ecall
	la a0, enter                                   
    li a7, 4
    ecall





	la a1, arr2
	lw a2, size2
	jal ra, printarray
	la a0, enter                                   
    li a7, 4
    ecall
	la a0, result2                #load result2 and print                   
    li a7, 4
    ecall
	jal ra, singlenumber
	li a7, 1
    ecall
	la a0, enter                                   
    li a7, 4
    ecall

	la a1, arr3
	lw a2, size3
	jal ra, printarray
	la a0, enter                                   
    li a7, 4
    ecall
	la a0, result3                #load result3 and print                   
    li a7, 4
    ecall
	jal ra, singlenumber
	li a7, 1
    ecall
	la a0, enter                                   
    li a7, 4
    ecall

singlenumber:
	mv t0, x0	#t0 as temporary result 
	mv t1, x0	#t1 as i of for loop
	mv t2, a1	#t2 as temporay address and initialize with address of arr1
loop1:
	beq t1, a2, exit1
	lw t3, 0(t2)
	xor t0, t0, t3
	addi t2, t2, 4
	addi t1, t1, 1
	j loop1

printarray:
	mv t1, x0
	mv t2, a1
loop2:
	beq t1, a2, exit2
	lw a0, 0(t2)
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	addi t2, t2, 4
	addi t1, t1, 1
	j loop2

exit1:
	mv a0, t0
	jr ra

exit2:
	lw a0, enter
	li a7, 4
	ecall
	jr ra
	



