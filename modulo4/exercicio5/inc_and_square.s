.section .text          			# section identifier (text)

	.global inc_and_square        	# declare function int inc_and_square(int *v1, int v2) global
	        
inc_and_square:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		pushl %ebx
		movl 8(%ebp), %ebx		# valor de v1 para ecx
		movl 12(%ebp), %ecx		# valor de v2 para edx
		incl (%ebx)				# incremento o valor de edx
		movl %ecx, %eax			# movo o que está em ecx para eax
		imull %ecx, %eax		# faço o quadrado do número
		
		#epilogue
		popl %ebx
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
		
