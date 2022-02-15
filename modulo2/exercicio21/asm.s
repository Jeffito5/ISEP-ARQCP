.section .data

	.global currentSalary
	.global code
	
.section .text

	.global new_salary
	
new_salary: 
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função
		movl $11, %ecx
		movl code,%eax
		cmpl %ecx,%eax
		jg jump_if_12_or_13
		je jump_if_11
		jl jump_if_10
		
jump_if_10:
		movl currentSalary,%eax
		addl $300,%eax
		jmp end
		
jump_if_11:
		movl currentSalary,%eax
		addl $250,%eax
		jmp end
		
jump_if_12_or_13:
		movl $12,%ecx
		movl code,%eax
		cmpl %ecx,%eax
		jg jump_if_13
		je jump_if_12
		
jump_if_13:
		movl currentSalary,%eax
		addl $100,%eax
		jmp end
		
jump_if_12:
		movl currentSalary,%eax
		addl $150,%eax
		jmp end
		
end:
		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
		
