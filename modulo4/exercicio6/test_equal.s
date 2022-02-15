.section .text          			# section identifier (text)

	.global test_equal        		# declare function int test_equal(char *a, char *b) global
	
test_equal:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		pushl %ebx
		movl 8(%ebp), %ecx			# guardo o char *a em ebx
		movl 12(%ebp), %edx			# guardo o char *b em edx	
				
compare_loop:
		cmpl %edx, %ecx				# comparo os 2 endereços
		je continue_loop
		jne return_0
		movl $1, %eax
		jmp end
		
continue_loop:
		loop compare_loop
		
return_0:
		movl $0, %eax
		jmp end
		
end: 	
		popl %ebx  
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
		
