.section .text          			# section identifier (text)

	.global calculate        		# declare function int calculate(int a, int b) global
        
calculate:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		subl $8, %esp				# guardo espaço para as variáveis locais
		pushl %ebx					# callee salva o ebx antes de usá-lo
		pushl %esi					# callee salva o esi antes de usá-lo
		pushl %edi					# callee salva o edi antes de usá-lo
		
		movl 8(%ebp), %ebx			# o1 vai para ebx
		movl 12(%ebp), %esi			# o2 vai para esi
		movl 12(%ebp), %edi			# coloco o o2 outra vez em edi porque o esi vai ser a soma passada para a print_result
		call sum					# chamo a função sum
		
		movl 12(%ebp), %esi			# coloco o o2 em esi outra vez
		call product				# chamo a função product
		
		movl -8(%ebp), %eax			# variável local sum vai para eax
		movl -4(%ebp), %ecx			# variável local product vai para ecx
		subl %ecx, %eax				# (a+b)-(a*b) e fica em eax
		jmp end						# salto para o fim
		
sum:		
		addl %ebx, %esi				# o1+o2 e valor fica em esi
		movl %esi, -8(%ebp)			# movo o valor da soma para a variável local sum
		pushl %esi					# valor da soma vai para o print_result
		pushl %edi					# valor de o2 para o print_result
		pushl %ebx					# valor de o1 para o print_result
		pushl $'+'					# passo o caracter + para o print_result
		call print_result			# chama a função print_result
		addl $16, %esp				# adiciona 16 ao %esp para que a stack pointer volte a apontar para a posição inicial
	
product: 
		imull %ebx, %edi			# o1*o2
		movl %edi, -4(%ebp)			# copio o valor de o1*o2 para a variável local product
		pushl %edi					# passo o valor de product para o print_result
		movl 12(%ebp), %esi			# o2 vai para esi
		pushl %esi					# passo o valor de o2 para o print_result
		pushl %ebx					# passo o valor de o1 para o print_result
		pushl $'*'					# passo o caracter * para o print_result
		call print_result			# chama a função print_result
		addl $16, %esp				# adiciona 16 ao %esp para que a stack pointer volte a apontar para a posição inicial
		
end: 
		popl %edi					# restauro o valor de edi
		popl %esi					# restauro o valor de esi
		popl %ebx					# restauro o valor de ebx
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
