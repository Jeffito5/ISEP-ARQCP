.section .data
	
	.global ptrvec            	# declare ptrvec global 
	
.section .text          		# section identifier (text)

	.global vec_add_one        	# declare function as global s

vec_add_one:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
	
		# corpo da função
		movl ptrvec, %edx 		# movo o endereço do vetor para edx
		movl $10, %ecx			# for
			
vec_loop:
		addl $1, (%edx)			# adiciona 1 ao elemento do vetor
		addl $4, %edx			# salta para o elemento seguinte do vec
		loop vec_loop			# próxima iteração
		
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
