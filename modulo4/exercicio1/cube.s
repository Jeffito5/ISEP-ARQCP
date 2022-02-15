.section .text          		# section identifier (text)

	.global cube        		# declare function int cube(int x) global
	
cube:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		pushl $3				# guardo na stack o expoente
		pushl $2				# guardo a base na stack
		call calcule_cube		# chamo a função que me vai calcular o cubo
		addl $8, %esp 			# limpo a função e coloco o esp no topo
		
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
        
calcule_cube:
		# prologue
		pushl %ebp          	# save previous stack frame pointer
		movl %esp, %ebp     	# the stack frame pointer for our function
		
		pushl %ebx 				# guardo o ebx na stack
		movl 8(%ebp), %ebx		# guardo a base em ebx
		movl 12(%ebp), %ecx		# guardo o expoente em ecx
		movl %ebx, %eax			# movo o que está em ebx para eax
		
cube_loop_start:
		cmpl $1, %ecx			# verifico se o expoente é 1
		je end					# se for 1 salto para o final
		imull %ebx, %eax		# multiplico a base pela base
		decl %ecx				# decremento o expoente
		jmp cube_loop_start		# volto ao loop
		
end:
		popl %ebx				# restauro o ebx
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
