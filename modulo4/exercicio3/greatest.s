.section .text          		# section identifier (text)

	.global greatest        	# declare function int greatest(int a, int b, int c) global
	
greatest:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		pushl $4				# guardo na stack o valor
		pushl $2843				# guardo na stack o valor
		pushl $50				# guardo na stack o valor
		call check_greatest		# chamo a função que vai calcular o maior valor
		addl $12, %esp 			# limpo a função e coloco o esp no topo
		
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
        
check_greatest:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		pushl %ebx 				# guardo o ebx na stack
		movl 8(%ebp), %ebx		# guardo o a em ebx
		movl 12(%ebp), %ecx		# guardo o b em ecx
		movl 16(%ebp), %edx		# guardo o c em eax
		movl %ebx, %eax			# movo o que está em ebx para eax
		
		cmpl %ecx, %eax			# comparo o b com o a
		jge compare_with_c		# se o a for maior ou igual comparo com o c
		jl b_bigger_a			# se o b for maior que o a salto para b_bigger_a
		
compare_with_c:
		cmpl %edx, %eax			# comparo o c com o a	
		jge end					# se o a for maior ou igual salto para o fim
		jl c_bigger				# se o c for maior salto para c_bigger

b_bigger_a:
		cmpl %edx, %ecx			# comparo o c com o b
		jge b_bigger			# salto para o b_bigger se o b for maior ou igual a c
		jl c_bigger				# se o c for maior salto para o c_bigger
		
c_bigger:
		movl %edx, %eax			# movo o c para o local do a
		jmp end					# salto para o fim
		
b_bigger:
		movl %ecx, %eax			# movo o b para o local do a
		jmp end					# salto para o fim

end:
		popl %ebx
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
