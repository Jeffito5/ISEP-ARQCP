.section .data
	.global num

.section .text          		# section identifier (text)

	.global vec_avg        		# declare function as global 
	.global vec_sum				# declarar vec_sum externa como global
	
vec_avg:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
	
		call vec_sum			# valor de retorno vai para eax
		movl num, %ecx			# número de elementos vai para ecx
		movl $0,%edx			
		idivl %ecx				# média
		
		#epilogue
		movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
		popl %ebp               # restore the previous stack frame pointer
		ret
		
