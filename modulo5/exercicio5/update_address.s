.section .data
		
	.equ ADDRESS_OFFSET, 124 		# 1+2+10*4+80*1=123 logo inicia no 124
	
.section .text

	.global update_address			# declarar update_address(Student *s, char *new_address) como global
	
update_address:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		movl 8(%ebp), %eax			# pointer s vaipara eax
		movl 12(%ebp), %edx			# novo endereço vai para edx
		
		addl $ADDRESS_OFFSET, %eax 	# pointer fica no início do vec de endereços

change_loop:
		cmpl $0, (%edx) 			# verifica se o vec de novos endereços acabou
		je end 						# se acabou salta para o fim
		movb (%edx), %cl 			# move o novo char para o cl
		movb %cl, (%eax) 			# troca-se os endereços
		addl $1, %eax 				# avança-se para o seguinte endereço antigo
		addl $1, %edx 				# avança-se para o seguinte endereço novo
		jmp change_loop				# volta ao loop
		
end:
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
