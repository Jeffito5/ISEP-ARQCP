.section .text          					# section identifier (text)

	.global count_bits_zeros        		# declare function int count_bits_zeros(int x) global
        
count_bits_zeros:
		# prologue
		pushl %ebp          				# save previous stack frame pointer
		movl %esp, %ebp     				# the stack frame pointer for our function
		
		pushl %ebx							# callee salva o ebx antes de usá-lo
		pushl %esi							# callee salva o esi antes de usá-lo
		movl 8(%ebp), %edx					# x vai para edx
		movb $1, %cl						# i=1
		movl $0, %eax						# counter
		movl $1, %esi						# mask
		
loop_for:
		shl %cl, %esi						# 1<<i
		pushl %esi							# guardo o valor da mask
		andl %edx, %esi						# masked_n=x & mask
		shr %cl, %esi						# bit=masked_n>>i
		cmpl $0, %esi						# if(bit==0)
		je inc_counter						# se for 0 incremento o counter
		popl %esi							# restauro o esi
		incb %cl							# i++
		cmpb $32, %cl						# verifico se o i=33
		jle loop_for						# se for menor ou igual continuo o loop	
		jmp end								# se for maior salto para o fim
		
inc_counter:
		incl %eax							# incremento o counter
		incb %cl							# i++
		cmpb $32, %cl						# verifico se o i=33
		jle loop_for						# se for menor ou igual continuo o loop	
		jmp end								# se for maior salto para o fim
		
end: 
		popl %ebx							# restauro o valor de ebx
		popl %esi							# restauro o valor de esi
		#movl %ecx, %eax						# movo o valor do counter para eax
		#epilogue
        movl %ebp, %esp         			# restore the previous stack pointer ("clear" the stack)
        popl %ebp               			# restore the previous stack frame pointer
        ret
		
