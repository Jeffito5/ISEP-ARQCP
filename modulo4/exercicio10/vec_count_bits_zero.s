.section .text          					# section identifier (text)

	.global vec_count_bits_zero        		# declare function int vec_count_bits_zero(int* ptr, int num)  global
        
vec_count_bits_zero:
		# prologue
		pushl %ebp          				# save previous stack frame pointer
		movl %esp, %ebp     				# the stack frame pointer for our function
		
		pushl %ebx							# callee salva o ebx antes de usá-lo
		pushl %esi							# callee salva o esi antes de usá-lo
		pushl %edi							# callee salva o edi antes de usá-lo
		movl 8(%ebp), %edx					# ptr vai para edx
		movl 12(%ebp), %edi					# num=5
		movb $1, %cl						# i=1
		movl $0, %eax						# counter
		movl $1, %esi						# mask
		
loop_for:
		shl %cl, %esi						# 1<<i
		pushl %esi							# guardo o valor da mask
		andl (%edx), %esi					# masked_n=x & mask
		shr %cl, %esi						# bit=masked_n>>i
		cmpl $0, %esi						# if(bit==0)
		je inc_counter						# se for 0 incremento o counter
		popl %esi							# restauro o esi
		incb %cl							# i++
		cmpb $32, %cl						# verifico se o i=33
		jle loop_for						# se for menor ou igual continuo o loop	
		jg inc_ptr							# se for maior vou para o inc_ptr
		
inc_ptr:
		addl $4, %edx						# avanço para o próximo número
		subl $1, %edi						# num=num-1
		cmpl $0, %edi						# verifico se num=0
		jg loop_for							# se for maior salto para o fim
		je end								# se for 0 salto para o fim
		
inc_counter:
		incl %eax							# incremento o counter
		incb %cl							# i++
		cmpb $32, %cl						# verifico se o i=33
		jle loop_for						# se for menor ou igual continuo o loop	
		jg inc_ptr							# se for maior vou para o inc_ptr
		
end: 
		popl %ebx							# restauro o valor de ebx
		popl %esi							# restauro o valor de esi
		popl %edi							# restauro o valor de edi
		movl %ecx, %eax						# movo o valor do counter para eax
		#epilogue
        movl %ebp, %esp         			# restore the previous stack pointer ("clear" the stack)
        popl %ebp               			# restore the previous stack frame pointer
        ret
