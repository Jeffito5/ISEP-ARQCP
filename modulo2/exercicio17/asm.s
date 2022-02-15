.section .data

		.global n1
		.global n2
		.global a
		.global b
		.global c
		.global d
		.global e
		.global f
		.global g
				
.section .text
.global sum 		# int sum(void)
.global subtract 	# int subtract(void)
.global mul 		# int mul(void)
.global div 		# int div(void)
.global mod 		# int mod(void)
.global power2 		# int power2(void)
.global power3 		# int power3(void)

sum:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl n1,%eax
		movl n2,%ecx
		addl %ecx,%eax
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
		
subtract:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl n1,%eax
		movl n2,%ecx
		subl %ecx,%eax
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
		
mul:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl n1,%eax
		movl n2,%ecx
		mull %ecx
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
		
div:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl n1,%eax
		movl n2,%ecx
		divl %ecx
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
		
mod:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl n1, %eax
		movl $0, %edx
		divl n2
		movl %edx, %eax
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
		
power2:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl n1, %eax
		mull n1
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret

power3:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl n1, %eax
		mull n1
		mull n1
		cdq
		
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret

