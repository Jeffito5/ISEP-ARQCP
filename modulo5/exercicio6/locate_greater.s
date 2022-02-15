.section .text

	.global locate_greater					# declarar int locate_greater(Student *s, int minimum, int *greater_grades) como global
	
locate_greater:
		# prologue
		pushl %ebp          				# save previous stack frame pointer
		movl %esp, %ebp     				# the stack frame pointer for our function
		
		pushl %ebx							# callee dá save ao ebx antes de usá-lo
		pushl %esi							# callee dá save ao esi antes de usá-lo
		pushl %edi							# callee dá save ao edi antes de usá-lo
		movl 8(%ebp), %ebx					# pointer s vai para ebx
		movl 12(%ebp), %ecx					# valor mínimo vai para ecx
		movl 16(%ebp), %edx					# pointer do vetor com as notas novas vai para edx
		movl $0, %esi 						# limpa o esi=i
		movl $0, %eax 						# limpa o eax=counter
		movl $0, %edi 						# limpa o edi
		
greater_loop:
		cmpl $10, %esi						# verifico se o for chegou ao fim
		je end								# se chegou ao fim salto para o end
		movl (%ebx, %esi, 4), %edi			# s[i] vai para edi
		cmpl %ecx, %edi						# comparo o mínimo com a nota
		jg inc_count						# se a nota for maior incremento o counter e atualizo o novo vetor
		incl %esi							# se a nota não for maior então i++
		loop greater_loop					# volto ao loop
		
inc_count:
		incl %eax							# incremento o counter
		movl %edi, (%edx)					# movo a nota para o novo vetor de notas
		incl %esi							# i++
		addl $4, %edx						# avanço para a posição seguinte neste novo vetor
		loop greater_loop					# volto ao loop 
			
end: 
		popl %edi 							# restauro o edi
		popl %esi 							# restauro o esi
		popl %ebx 							# restauro o ebx
		#epilogue
		movl %ebp, %esp         			# restore the previous stack pointer ("clear" the stack)
        popl %ebp               			# restore the previous stack frame pointer
        ret
		

		
		
