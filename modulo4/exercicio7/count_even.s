.section .text          			# section identifier (text)

	.global count_even        		# declare function int count_even(short *vec, int n) global
	
count_even:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		pushl %ebx 					# guardo o ebx na stack
		movl 8(%ebp), %eax			# pointer em eax
		movl 12(%ebp), %ecx			# guardo o n em edx -> for
		movl $0, %ebx				# inicializo o counter
		
even_loop:
		movl $2, %edx
		idivl %edx
		cmpl $0, %edx				# comparo o 0 com o resto. Se o resto=0 então é par
		je increase_counter			# se o resto da divisão der 0 então é par e aumento o counter
		loop even_loop				# retorna ao loop
		jmp end						# salta para o fim
		
increase_counter:	
		incl %ebx					# incremento o counter
		loop even_loop				# volto ao loop
		
end: 	
		popl %ebx					# restauro o ebx
		movl %ebx, %eax				# coloco o counter em eax
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
