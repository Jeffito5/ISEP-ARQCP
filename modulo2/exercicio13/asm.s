.section .data

	.global base
	.global height
	.global area
	
.section .text
.global getArea 		# int getArea(void)

getArea:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl base, %eax
		movl height, %edx
		movl $2,%ecx
		mul %edx
		divl %ecx
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
