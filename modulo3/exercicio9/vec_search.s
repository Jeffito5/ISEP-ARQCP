.section .data
	
	.global ptrvec            	# declare ptrvec global 
	.global x					# declare x global
	
.section .text          		# section identifier (text)
	.global vec_search        	# declare function short* vec_search(void) as global
	
vec_search:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		#corpo da função
		movl ptrvec, %edx 		# movo o endereço do vetor para edx
		movl $10, %ecx			# for
		movl x, %ebx			# movo o x para eax
		
vec_loop:
		cmpl (%edx), %ebx		# verifico se o valor do vec nessa posição é 10
		je jump_if_10
		loop vec_loop
		movl $48, %eax
		jmp end

jump_if_10:
		movl (%edx), %eax
		jmp end
		
end: 
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
	
