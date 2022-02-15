.section .data			
	
	.global ptrvec					# definir ptrvec como global
	
.section .text

	.global array_sort				# definir função void array_sort(void) como global
	
array_sort:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		#corpo da função	
		movl ptrvec, %edx 			# movo o endereço de vec para edx
		movl $5, %ecx				# inicio o for com o num=5
		
sort_loop:
		movl (%edx), %eax			# coloco o primeiro elemento do vetor em eax
		cmpl $0, %eax				# verifico se o vetor acabou	
		jmp end						# se for o fim salto para o end
		movl 4(%edx), %ebx			# coloco o elemento seguinte do vetor em ebx
		cmpl $0, %ebx				# verifico se o vetor acabou
		jmp end						# se for o fim salto para o end
		cmpl %ebx, %eax				# comparo o segundo elemento com o primeiro
		pushl %ecx					# guardo o ecx na stack
		jl jump_if_less				# se o primeiro for mais pequeno que o segundo troco-os	
		popl %ecx					# restauro o valor	
		decl (%edx)					# volto ao elemento anterior do vetor
		loop sort_loop				# volto ao loop
		
jump_if_less:
		movl %ebx, %ecx				# guardo o segundo elemento em ecx
		movl %eax, %ebx				# guardo o primeiro elemento em ebx
		movl %ecx, %eax				# guardo o segundo elemento em eax
		subl $4, (%edx)				# volto ao primeiro elemento
		movl %eax, (%edx)			# guardo o elemento maior na primeira posicao
		movl 4(%edx), %ebx			# guardo o elemento mais pequeno na segunda posição
		decl (%edx)					# volto ao elemento anterior
		loop sort_loop				# volto ao loop
		
end: 
		#epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
		
