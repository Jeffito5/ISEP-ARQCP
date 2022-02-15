.section .data
.global op1
.global op2

op3:
	.int 5

.global op4	
op4:
	.int 10

.section .text
.global sum_v3 		#void sum_v3(void)

sum_v3:

# prologue
pushl %ebp 			# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

movl op4, %ecx 		#place op4 in ecx
movl op3, %eax 		#place op3 in eax
addl %ecx, %eax 	#add ecx to eax. Result is in eax (op4 + op3)

movl op2, %ecx		#place op2 in ecx
subl %ecx, %eax		#sub ecx to eax. Result is in eax (op4 + op3 - op2)

movl op1, %ecx		#place op1 in ecx
addl %ecx, %eax		#add ecx to eax. Result is in eax (op4 + op3 - op2 + op1)

movl %eax, op4		#place %eax in op4

# epilogue
movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
popl %ebp 			# restore the previous stack frame pointer

ret
