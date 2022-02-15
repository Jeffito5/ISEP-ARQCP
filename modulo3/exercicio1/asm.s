.section .data

    str:
        .asciz "O jogador teve uma avaliação 10/10"

.section .text
    .global zero_count          # definir função int zero_count(void) como global
	
zero_count:
		#prologue
		pushl %ebp 				# save previous stack frame pointer
		movl %esp, %ebp 		# the stack frame pointer for sum function
		
		#corpo da função
		movl $0, %eax
        movl $str, %edx

lp_while:
        movb (%edx), %cl
        cmpb  $0,%cl
        je loop_end
        cmpb  $48,%cl
        jne next_iteration
        incl %eax            	# inc counter of zeros

next_iteration:
        incl %edx        		# next char
        jmp lp_while    		# go back to loop
            
loop_end:
        #epilogue
        movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
        popl %ebp               # restore the previous stack frame pointer
        ret
