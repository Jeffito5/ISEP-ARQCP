.section .data

	.global A
	.global B
	.global C
	.global D
	.global res
	
.section .text
.global compute 		# int compute(void)

compute:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl A,%eax
		movl B,%ecx
		mull %ecx
		movl C,%ecx
		addl %ecx,%eax
		movl D,%ecx
		divl %ecx
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret

		
