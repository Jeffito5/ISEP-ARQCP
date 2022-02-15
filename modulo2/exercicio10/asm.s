.section .data			

	op1:
		.int 4342			#declarar op1=4342
		
	op2:					
		.int 5567			#declarar op2=5567
	
.section .text
	.global sum2ints		#definir função long long sum2ints(void) como global
	
sum2ints: 
		#prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
	
		#corpo da função		
		movl op1,%ecx
		movl op2,%eax
		addl %ecx,%eax

		#epilogue
		movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
		popl %ebp 			# restore the previous stack frame pointer
		ret
