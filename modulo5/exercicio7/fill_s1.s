.section .text

	.global fill_s1					# declarar fill_s1(s1 *s, int vi, char vc, int vj, char vd) como global
	
fill_s1:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		movl 8(%ebp), %eax			# movo o pointer para eax
		movl 12(%ebp), %edx			# movo o int vi para edx
		
		movl %edx, (%eax)			# movo o vi para o vec 
		addl $4, %eax				# avanço para o pŕoximo elemento. Tem de ser 4 porque o maior elemento é um int=4bytes
		
		movb 16(%ebp), %dl			# movo o char vc para dl
		movb %dl, (%eax)			# movo o vc para o vec 
		addl $4, %eax				# avanço para o pŕoximo elemento. Tem de ser 4 porque o maior elemento é um int=4bytes. 3 bytes de espaço
		
		movl 20(%ebp), %edx			# movo o int vj para edx
		movl %edx, (%eax)			# movo o vj para o vec 
		addl $4, %eax				# avanço para o pŕoximo elemento. Tem de ser 4 porque o maior elemento é um int=4bytes
		
		movb 24(%ebp), %dl			# movo o char vd para dl
		movb %dl, (%eax)			# movo o vd para o vec 
		addl $4, %eax				# avanço para o pŕoximo elemento. Tem de ser 4 porque o maior elemento é um int=4bytes. 3 bytes de espaço
		
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret
