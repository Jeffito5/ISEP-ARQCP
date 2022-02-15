.section .data			
	
	.global ptrvec					# definir ptrvec como global
	
.section .text

	.global sum_first_byte			# definir função int sum_first_byte(void) como global
	
sum_first_byte:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		#corpo da função
		movl ptrvec, %edx 			# movo o endereço de vec para edx
		movl num, %ecx				# inicio o for com o num=5
		movl sum, %eax				# coloco o resultado em eax
		
sum_first_byte_loop:
		movl (%edx), %eax
		addl $4, %edx
		movl (%edx), %ebx
		addb %bl, %al
		cbw
		cwd
		loop sum_first_byte_loop
		jmp end
		
end:
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
