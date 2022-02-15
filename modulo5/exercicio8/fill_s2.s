.section .text

	.global fill_s2					# declarar fill_s2(s2 *s, short vw[3], int vj, char vc[3]) como global
	
fill_s2:
		# prologue
		pushl %ebp          		# save previous stack frame pointer
		movl %esp, %ebp     		# the stack frame pointer for our function
		
		pushl %ebx					# callee salva o ebx antes de usá-lo
		pushl %esi					# callee salva o esi antes de usá-lo
		movl 8(%ebp), %eax			# colocar o pointer em eax
		movl 12(%ebp), %ebx			# colocar o short vw[3] em edx
		movl $0, %esi				# for(i=0...
		movl $0, %ecx				# limpo o %ecx
		
loop_shorts:
		cmpl $3, %esi				# verifica se já percorreu todo o vetor de shorts
		je int_next					# se já passou por ele todo passa para o inteiro
		movw (%ebx, %esi, 2), %cx	# coloca o primeiro short em cx
		movw %cx, (%eax)			# coloco o short no vec 
		addl $2, %eax 				# próximo short
		incl %esi 					# i++
		loop loop_shorts			# volta ao loop
		
int_next:
		addl $2, %eax 				# adiciono 2 bytes para chegar ao inteiro pois 8-(2*3)=2 
		movl 16(%ebp), %ecx			# movo o vj para ecx
		movl %ecx, (%eax)			# movo o vj para a posição seguinte do pointer
		addl $4, %eax				# adiciono 4 bytes para passar ao próximo elemento
		movl $0, %esi				# for(i=0...
		
		movl 20(%ebp), %edx			# movo o char vc[3] para edx
	
loop_chars:
		cmpl $3, %esi				# verifica se já percorreu todo o vetor de shorts
		je end						# se já percorreu todo salto para o fim
		movb (%edx, %esi, 1), %cl	# coloco o primeiro char em cl
		movb %cl ,(%eax)			# coloco o char no vec
		addl $1, %eax				# avanço para o próximo char
		incl %esi 					# i++
		loop loop_chars				# volto ao loop

end:		
		popl %esi					# restauro o esi
		popl %ebx					# restauro o ebx
		#epilogue
        movl %ebp, %esp         	# restore the previous stack pointer ("clear" the stack)
        popl %ebp               	# restore the previous stack frame pointer
        ret 	
