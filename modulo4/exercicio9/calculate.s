.section .text          			# section identifier (text)

	.global calculate        		# declare function int calculate(int a, int b) global
        
calculate:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		pushl %ebx					# callee salva o ebx antes de usá-lo
		subl $8, %esp				# guardo espaço para as variáveis locais	
		call sum					# chamo a função sum
		addl $8, %esp				# volto ao inicio
		call product				# chamo a função product
		addl $8, %esp				# volto ao inicio
		movl -8(%ebp), %eax			# movo o valor de prod para edx
		movl -4(%ebp), %edx			# movo o valor de sum para eax
		subl %edx, %eax				# faço (a+b)-(a*b)
		jmp end						# salto para o fim
			
sum:		
		movl 8(%ebp), %ebx			# o1
		movl 12(%ebp), %esi			# o2
		addl %esi, %ebx				# faz a soma do o1 com o2
		movl %ebx, %eax
		#-4(%ebp)					# move a soma para a variável local sum
		call print_result

product: 
		movl 8(%ebp), %ebx			# o1=2
		movl 12(%ebp), %esi			# o2=6
		imull %esi, %ebx			# multiplico o1 com o2
		movl %ebx, -8(%ebp)			# movo o valor para a variável local product
		call print_result
		
end: 
		popl %ebx
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
