.section .data
	
	.global ptrvec            	# declare ptrvec global  
	
.section .text          		# section identifier (text)
	.global keep_positives      # declare function void keep_positives(void) as global
	
keep_positives:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		#corpo da função
		movl ptrvec, %edx 		# movo o endereço do vetor para edx
		movl $10, %ecx			# for
		movl $0, %eax			# movo o 0 para eax
		
keep_positives_loop:
		cmpl (%edx), %eax		# comparo o endereço do vetor com 0
		jg jump_if_negative		# se 0>num 
		loop keep_positives_loop		# se 0<= num continua no loop
		
jump_if_negative:
		movl %ecx, (%edx)		# movo o índice para o endereço do vetor
		loop keep_positives_loop		# volto ao loop
		jmp end					# salto para o fim
		
end: 
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
