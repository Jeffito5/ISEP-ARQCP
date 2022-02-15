.section .data
		
	.equ GRADES_OFFSET, 4 			# tem de avançar 4 bytes para chegar ao inicio
	
.section .text

	.global update_grades			# declarar update_grades(Student *s, int *new_grades) como global
	
update_grades:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		movl 8(%ebp), %eax			# pointer s vaipara eax
		movl 12(%ebp), %edx			# novo endereço vai para edx
		movl $0, %ecx 				# inicia-se o for com i=0
		addl $GRADES_OFFSET, %eax 	# pointer fica no início do vec de endereços
		
grades_loop:
		cmpl $10, %ecx 				# ver se o for acabou
		je end 						# se acabou salta para o fim
		movl (%edx, %ecx, 4), %ebx  # grades[%ecx] vai para ebx
		movl %ebx, (%eax) 			# ebx vai para o eax
		addl $4, %eax 				# avança para o próximo elemento do vetor
		incl %ecx 					# i++
		jmp grades_loop 			# volta ao loop
		
end:
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
