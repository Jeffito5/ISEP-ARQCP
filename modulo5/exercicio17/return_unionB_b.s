.section .data

	.global return_unionB_b					# declarar int aprovados(group *g) como global
	.equ STRUCT_SIZE, 36						# 36 bytes=tamanho da estrutura
	.equ offsetUnion, 20					# 20 bytes=tamanho da union

.section .text

return_unionB_b:
		# prologue
		pushl %ebp          				# save previous stack frame pointer
		movl %esp, %ebp     				# the stack frame pointer for our function

		pushl %ebx							# callee dá save antes de usá-lo
		pushl %esi							# callee dá save antes de usá-lo
		movl 8(%ebp), %edx					# pointer da matriz
		movl 12(%ebp), %ecx					# linhas
		movl 16(%ebp), %ebx					# colunas
		movl (%edx, %ecx, 4), %esi 			# copia o endereço que está na linha %ecx
		imull $STRUCT_SIZE, %ebx 			# numero de bytes que é preciso avançar até à coluna %ebx 
		addl %ebx, %esi 					# esi-matriz[i][j]
		addl $20, %esi 						# pointer-matriz[i][j].ub
		movb (%esi), %al 					# copia o valor do char para al

		popl %esi							# restaura o esi
		popl %ebx							# restaura o ebx
		#epilogue
        movl %ebp, %esp         		# restore the previous stack pointer ("clear" the stack)
        popl %ebp               		# restore the previous stack frame pointer
        ret
