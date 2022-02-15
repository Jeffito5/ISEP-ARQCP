.section .text          			# section identifier (text)

	.global count_even        		# declare function int count_even(short *vec, int n) global
	
count_even:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		pushl %ebx 					# guardo o ebx na stack
		movl 8(%ebp), %ebx      	# pointer on ebx
		movl $0, -8(%ebp)       	# counter dos indices numa variável local
		movl $0, -4(%ebp)       	# counter dos pares noutra variável local
		
even_loop:
		movl -8(%ebp), %ecx     	# counter dos indices em ecx 
		cmpl 12(%ebp), %ecx     	# comparar o counter com o n
		je end                  	# end loop

		movw $2, %cx            	# divisor em cx
		movw (%ebx), %ax        	# dividend em ax
		cwd                     	# estender o dividendo %dx:%ax
		idivw %cx               	# dividir

		cmpw $0, %dx            	# verificar se o resto é 0
		jne not_even            	# se não for não icremento o counter
		incl -4(%ebp)           	# se for incremento
		jmp end_loop

not_even:
		cmpw $1, %dx            	# verificar se o 1 não é 1
		jne error               	# se não for dá erro

end_loop:
		addl $2, %ebx           	# incrementar o pointer
		incl -8(%ebp)           	# incrementar o counter
		jmp even_loop                	# voltar ao loop
		
error:
		movl $-1, -4(%ebp)      	# return -1

end:
		movl -4(%ebp), %eax     	# even number counter in eax
		# epilogue
		popl %ebx               
		movl %ebp, %esp
		popl %ebp
		ret
