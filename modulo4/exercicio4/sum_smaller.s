.section .text          			# section identifier (text)

	.global sum_smaller        		# declare function n int sum_smaller(int num1, int num2, int *smaller) global
	
sum_smaller:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		pushl %ebx					# callee salva o ebx antes de usá-lo
		movl 8(%ebp), %ecx			# num1 em ecx
		movl 12(%ebp), %ebx			# num2 em ebx
		movl 16(%ebp), %edx			# pointer em edx
		cmpl %ebx, %ecx				# comparo o num1 com o num2
		jg num2_to_ptr				# se o num1 for maior passo o num2 para o pointer
		jle num1_to_ptr				# se o num1 for menor ou igual passo-o para o pointer
		
num2_to_ptr:
		movl %ebx, (%edx)			# *smaller=num2
		
		jmp end						# salto para o fim
	
num1_to_ptr:
		movl %ecx, (%edx)			# *smaller=num2
		addl %ebx, %ecx				# num1+num2
		jmp end						# salto para o fim
			
end:
		popl %ebx					# restauro o ebx
		movl %ecx, %eax				# movo a soma para eax
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
