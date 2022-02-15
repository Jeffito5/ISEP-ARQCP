.section .text
	.global aprovados					# declarar int aprovados(group *g) como global

aprovados:
		# prologue
		pushl %ebp          			# save previous stack frame pointer
		movl %esp, %ebp     			# the stack frame pointer for our function

		movl 8(%ebp), %ebx 				# pointer da estrutura
		movl (%ebx), %ecx 				# número de estudantes vai para ecx
		addl $4, %ebx 					# avança 4 bytes para chegar ao vetor das notas
		movl (%ebx), %edx 				# coloca o endereço em edx
		movl $0, %eax 					# limpa eax

loop_estudantes:
		cmpl $0, %ecx 					# verifica se todos os alunos foram verificados
		je end 							# se foram todos verificados salta para o fim
		pushl %eax 						# guarda eax na stack 
		pushl %ecx 						# guarda ecx na stack 
		pushl %ebx 						# guarda ebx na stack 
		pushl %edx 						# guarda edx na stack 
		call estudante_aprovado 		# chama a função estudante_aprovado
		popl %edx 						# restaura o edx
		popl %ebx 						# restaura o ebx
		popl %ecx 						# restaura o ecx
		cmpl $1, %eax 					# confirma se o aluno foi aprovado (1) ou não (0)
		je aprovado 					# se for 1 foi aprovado 
		addl $1, %edx 					# próximo aluno
		popl %eax 						# restaura o eax
		decl %ecx 						# retira 1 ao número de estudantes
		loop loop_estudantes			# volta ao loop

aprovado: 
		popl %eax 						# restaura o eax
		incl %eax 						# aumenta o counter do número de estudantes aprovados
		decl %ecx 						# retira 1 ao número de estudantes
		addl $1, %edx 					# avança um estudante
		loop loop_estudantes			# volta ao loop

end:
		popl %ebx						# restaura o ebx
		#epilogue
        movl %ebp, %esp         		# restore the previous stack pointer ("clear" the stack)
        popl %ebp               		# restore the previous stack frame pointer
        ret

estudante_aprovado:
		# prologue
		pushl %ebp          			# save previous stack frame pointer
		movl %esp, %ebp     			# the stack frame pointer for our function
		
		pushl %ebx 						# callee guarda ebx antes de usá-lo
		pushl %esi 						# callee guarda esi antes de usá-lo
		movl $0, %ebx 					# limpa o ebx
		movb $0, %cl 					# limpa o cl 
		movl 8(%ebp), %edx 				# pointer da nota do estudante
		movb (%edx), %bl 				# coloca a nota no bl
		movb $1, %al 					# mask
		movl $0, %esi 					# limpa o esi

loop_notas:
		cmpb $8, %cl 					# verifica se todos os bits foram verificados 
		je verifica_aprov 				# se sim verifica quantos módulos foi aprovado
		shrb %cl, %bl 					# cl shifts para a direita da nota 
		andb %al, %bl 					# and 1 com bit mais o bit menos significativo de bl 
		cmpb $1, %bl 					# se bl = 1 então foi aprovado 
		je mod_aprov 					# salta para mod_aprov
		movb (%edx), %bl 				# restaura o bl 
		incb %cl 						# aumenta o nº de módulos verificados
		loop loop_notas					# volta ao loop

mod_aprov: 
		incl %esi 						# aumenta o número de módulos aprovado
		incb %cl 						# aumenta o número de módulos verificados
		movb (%edx), %bl 				# restaura o bl
		loop loop_notas					# volta ao loop

verifica_aprov: 
		cmpl $5, %esi 					# verifica se o número de módulos aprovados
		jge aluno_aprov 				# se for maior ou igual então foi aprovado
		movl $0, %eax 					# se não foi aprovado retorna eax=0
		jmp end_aprov 					# salta para o fim

aluno_aprov: 
		movl $1, %eax 					# eax=1 
		jmp end_aprov 					# salta para o fim

end_aprov: 
		popl %esi 						# restaura o esi
		popl %ebx 						# restaura o ebx
		#epilogue
        movl %ebp, %esp         		# restore the previous stack pointer ("clear" the stack)
        popl %ebp               		# restore the previous stack frame pointer
        ret
