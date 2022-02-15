.section .text

	.global fun1					# declarar short fun1(structB *s) como global
	.global fun2					# declarar short fun2(structB *s) como global
	.global fun3					# declarar short* fun3(structB *s) como global
	.global fun4					# declarar short fun4(structB *s) como global
	
fun1:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		movl 8(%ebp), %edx			# guardo o *s em eax
		movw (%edx), %ax			# o a é uma estrutura logo o valor é o short x
		jmp end 					# salta para o fim
		
fun2:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		movl 8(%ebp), %edx			# guardo o *s em eax
		addl $28, %edx 				# soma 28 bytes para ir até ao z
		movw (%edx), %ax 			# move o z para ax
		jmp end 					# salta para o fim
		
fun3:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		movl 8(%ebp), %eax			# guardo o *s em eax
		addl $28, %eax 				# soma 28 bytes para ir até z e devolve o endereço
		jmp end						# salta para o fim
		
fun4:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		movl 8(%ebp), %edx 			# guardo o *s em eax
		addl $8, %edx 				# soma 8 bytes para chegar ao 2º elemento da estrutura
		movl (%edx), %ecx 			# o apontado por edx é um pointer
		movw (%ecx), %ax 			# o apontado pelo pointer é o short x
		jmp end						# salta para o fim
		
end: 
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret 	
