.section .data

	.global count_odd_matrix			# declarar int count_odd_matrix(int **m, int y, int k) como global
	
.section .text
	
count_odd_matrix:
		# prologue
		pushl %ebp          			# save previous stack frame pointer
		movl %esp, %ebp     			# the stack frame pointer for our function
		
		pushl %ebx						# callee dá save antes de usá-lo
		pushl %esi						# callee dá save antes de usá-lo
		pushl %edi						# callee dá save antes de usá-lo
		
		movl 8(%ebp), %edx				# movo o endereço da matriz para edx
		movl 12(%ebp), %ecx				# movo o número de linhas para ecx
		movl 16(%ebp), %edi				# movo o número de colunas para edi
		movl $0, %eax					# counter=0
		
loop_linhas:
		cmpl $0, %ecx					# verifico se as linhas já acabaram
		je end							# se as linhas já acabaram passo para o fim
		movl (%edx), %ebx 				# se as linhas não acabaram passa o endereço das colunas da primeira linha para ebx
		loop loop_colunas				# salta para o loop das colunas
		
loop_colunas:
		cmpl $0, %edi 					# verifica se as colunas acabaram
		je salta_linha					# se as colunas acabaram passa para a linha seguinte
		movl (%ebx), %esi 				# vai buscar o inteiro apontado por ebx para esi
		andl $1, %esi 					# faz and com o bit menos significativo
		cmpl $1, %esi 					# se for 1 é impar
		je inc_counter					# se for 1 incrementa o counter	
		decl %edi						# decrementa o número de colunas a verificar
		addl $4, %ebx					# salta para o próximo elemento da linha							
		loop loop_colunas				# volta ao loop das colunas
		
salta_linha:
		movl 16(%ebp), %edi 			# coloca outra vez o número de colunas em edi
		addl $4, %edx 					# salta para a linha seguinte
		decl %ecx 						# decrementa o numero de linhas a verificar
		loop loop_linhas 				# volta ao loop_linhas para verificar se as linhas acabaram
		
inc_counter:
		incl %eax						# incrementa o eax
		decl %edi						# decrementa o número de colunas a verificar
		addl $4, %ebx					# salta para o próximo elemento da linha							
		loop loop_colunas				# volta ao loop das colunas
	
end:
		popl %edi						# restauro o edi
		popl %esi						# restauro o esi
		popl %ebx						# restauro o ebx
		#epilogue
        movl %ebp, %esp         		# restore the previous stack pointer ("clear" the stack)
        popl %ebp               		# restore the previous stack frame pointer
        ret
