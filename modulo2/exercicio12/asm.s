.section .data
.global op1
.global op2
.global res

.section .text
.global sum 		# void sum(void)

sum:

# prologue
pushl %ebp 			# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

movl op1, %eax
idiv op2
movb %al

# epilogue
movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
popl %ebp 			#restore the previous stack frame pointer
ret
