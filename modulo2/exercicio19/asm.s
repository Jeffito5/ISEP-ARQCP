.section .data

	.global desired
	.global current
	.global final
	
.section .text

	.global needed_time
	
needed_time:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		
		#corpo da função 
		movw current, %ax
		movw desired, %cx
		cmpw %ax, %cx
		jg jump_is_greater
		jl jump_is_lesser
		je jump_equals
		
		jmp fim
    
jump_is_greater:

		movw $2, %dx
		movw $60, %bx
		subw %ax, %cx
		mulw %bx
		mulw %dx
		cwd
		
		jmp fim
	
jump_is_lesser:
		movw $3, %dx
		movw $60, %bx
		subw %cx, %ax
		mulw %dx
		mulw %bx
		cwd
		
		jmp fim
		
jump_equals:

		movw $0, %ax
		jmp fim
		
fim:

		# epilogue
		movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
		popl %ebp 			#restore the previous stack frame pointer
		ret
