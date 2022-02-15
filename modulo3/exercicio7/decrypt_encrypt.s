.section .data
        
    .global ptr1
    .global decrypt
    .global encrypt
    .global even 
    
.section .text          		# section identifier (text)
	
	.global encrypt             
	.global decrypt        	
	
encrypt:
		# prologue
		pushl %ebp 				#save previous stack frame pointer
		movl %esp, %ebp 		#the stack frame pointer for sum function

		#32- ascii for space
		#97- ascii for 'a'

		movl ptr1, %edx 		#move adress of string to edx
		movl $0, %eax			#intializing counter to 0

encrypt_str:
		cmpb $0, (%edx)			# verifica se é o fim da string
		je end					# salta para o final se for
		cmpb $32, (%edx)		# check if space
		je next_iteration		# if space move on
		cmpb $97, (%edx)		# check if 'a'
		je next_iteration		# if "a" move on

		incl %eax				# inc the number of changes
		addb $2, (%edx)			# encrypt char
			
next_iteration:		
		incl %edx
		jmp encrypt_str

end:	
		# epilogue
		pushl %eax
		movl %edx, even			# guardo a string alterada no even
		cbw
		cwd
		call decrypt			# chamo a função decrypt
		popl %eax
		movl %ebp, %esp 		#restore the previous stack pointer ("clear" the stack)
		popl %ebp 				#restore the previous stack frame pointer
		ret

decrypt:
		# prologue
		pushl %ebp 				#save previous stack frame pointer
		movl %esp, %ebp 		#the stack frame pointer for sum function
		
		movl $0, %eax			#intializing counter to 0
	
		cmpb $0, even			# verifica se é o fim da string
		je end_2				# salta para o final se for
		cmpb $32, even			# check if space
		je next_iteration_2		# if space move on
		cmpb $97, even			# check if 'a'
		je next_iteration_2		# if "a" move on
		incl even
		
next_iteration_2:		
		subb $2, even			# decrypt char
		incl %eax				# inc the number of changes
		jmp encrypt_str

end_2:	
		# epilogue
		movl %ebp, %esp 		#restore the previous stack pointer ("clear" the stack)
		popl %ebp 				#restore the previous stack frame pointer
		ret
