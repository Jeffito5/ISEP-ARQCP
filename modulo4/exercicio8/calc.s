.section .text          			# section identifier (text)

	.global calc       				# declare function int calc(int a, int *b, int c) global
        
calc:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		subl $4, %esp				# espaço para a variável local z
		pushl %ebx					# callee salva o ebx antes de usá-lo
		pushl %esi					# callee salva o esi antes de usá-lo
		pushl %edi					# callee salva o edi antes de usá-lo
		
		movl 8(%ebp), %edi			# a para edi
		movl 12(%ebp), %esi			# *b para esi
		movl 16(%ebp), %ebx			# c para ebx
		
		movl (%esi), %eax			# move o apontado por b para eax
		subl %edi, %eax				# a-apontado por b
		mull %ebx					# c*z
		subl $2, %eax				# subtrai 2 a eax 	     
		
		popl %edi					# restauro o valor de edi
		popl %esi					# restauro o valor de esi
		popl %ebx					# restauro o valor de ebx
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
