.section .data			
	
	.global ptrgrades					# definir ptrgrades como global
	.global ptrfreq						# definir ptrfreq como global
	.global num							# definir num como global
	
.section .text

	.global frequencies					# definir função void frequencies(void) como global
	
frequencies:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		# corpo da função
		movl ptrvec, %ptrgrades 		# movo o endereço de vec1 para edx
		movl ptrvec, %ptrfreq 			# movo o endereço de vec2 para ecx
		movl $10, %eax					# inicio o for com o num=10
		
		
