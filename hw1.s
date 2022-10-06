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
	la a1, arr1			#load base address of arr1 into a1
	lw a2, size1			#load size of arr1 into a2
	jal ra, printarray		#call for print example array function
	la a0, result1			#print string result1
   	li a7, 4
    	ecall
	jal ra, singlenumber		#call for singlenumber function
	jal Enter				


	la a1, arr2			#load base address of arr2 into a1
	lw a2, size2			#load size of arr2 into a2
	jal ra, printarray		#call for print example array function
	la a0, result2		    	#print string result2              
    	li a7, 4
    	ecall
	jal ra, singlenumber		#call for singlenumber function
	jal Enter			#print string enter
	li a7 10
    	ecall

	la a1, arr3			#load base address of arr3 into a1
	lw a2, size3			#load size of arr3 into a2
	jal ra, printarray		#call for print example array function
	la a0, result3          	#print string result3             
    	li a7, 4
    	ecall
	jal ra, singlenumber		#call for singlenumber function
	jal Enter			#print string enter


singlenumber:
	mv t0, x0			#t0 as temporary result 
	mv t1, x0			#t1 as i of for loop
	mv t2, a1			#t2 as temporay address and initialize with address of example array
loop1:
	beq t1, a2, exit1		#if i==size, exit1
	lw t3, 0(t2)			#load array element into t3
	xor t0, t0, t3			#xor operation, and save result into t0
	addi t2, t2, 4			#shift address by 1 word
	addi t1, t1, 1			#add i by 1
	j loop1				#jump back to loop1


printarray:
	mv t1, x0			#t1 as i of for loop
	mv t2, a1			#t2 as temporay address and initialize with address of example array
loop2:
	beq t1, a2, exit2		#if i == size, exit2
	lw a0, 0(t2)			#load array element into a0
	li a7, 1			#print array element
	ecall
	la a0, space			#print space
	li a7, 4
	ecall
	addi t2, t2, 4			#shift address by 1 word
	addi t1, t1, 1			#add i by 1
	j loop2				#jump back to loop2


exit1:
	mv a0, t0			#print result in a0
	li a7, 1				
    	ecall
	jr ra				#jump back to main function


exit2:
	la a0, enter			#print enter
	li a7, 4
	ecall
	jr ra				#jump back to main function
	

Enter:
	la a0, enter            	#print enter                       
        li a7, 4
    	ecall
	jr ra				#jump back to main function

