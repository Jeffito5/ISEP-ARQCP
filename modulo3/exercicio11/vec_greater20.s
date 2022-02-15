.section .data
	
	.global ptrvec            		# declare ptrvec global 
	
.section .text          			# section identifier (text)
	.global vec_greater20        	# declare function int vec_greater20(void) as global
	
vec_greater20:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		#corpo da função
		movl ptrvec, %eax 			# movo o endereço do vetor para edx
		movl $10, %ecx				# for
		movl $0, %ebx				# counter

vec_loop:
		cmpl $0 , (%eax)			# verifico se os 4 bytes maiores são superiores a 20
		jz saltar_indice			# se for zero avança 4 bytes
		incl %ebx					# incremento o counter
		addl $8, %eax				# adiciono ao pointer
		loop vec_loop				# volto ao loop
		jmp end

saltar_indice:
		addl $4, %eax				# avança os 4 bytes
		cmpl $20, %eax				# verifica se os bytes são superiores a 20
		jg incrementar				# maiores que 20 incrementa o counter
		addl $4, %eax				# adiciono 8 ao pointer	
		loop vec_loop				# volto ao loop
		
incrementar:
		incl %ebx					# incremento o counter
		addl $4, %eax				# adiciono 4 ao pointer
		loop vec_loop				# volto ao loop
		
end: 	
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
