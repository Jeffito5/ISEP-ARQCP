.section .text          		# section identifier (text)

	.global sum_n        		# declare function int sum_n(int n) global
	
sum_n:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		movl 8(%ebp), %edx		# movo o parâmetro n para ecx
		movl $0, %ecx			# inicio o for
		movl $0, %eax			# inicio a soma=0
		
for:
		addl $1, %ecx			# i=1
		cmpl %edx, %ecx
		jne sum
		je end
		
sum:
		addl %ecx, %eax			# soma=soma+i
		jmp for
		
end: 
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
