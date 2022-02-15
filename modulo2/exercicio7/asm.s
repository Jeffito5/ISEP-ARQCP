.section .data
.global s1
.global s2
.global crossSum

.section .text
.global crossSumBytes 		# short crossSumBytes(void)

crossSumBytes:

# prologue
pushl %ebp 			# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

movw s1, %ax
movw s2, %bx

movb %ah, %ch
addb %bl, %ch
movb %ch, %ah
movb %al, %cl
addb %bh, %cl
movb %cl, %al

# epilogue
movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
popl %ebp 			#restore the previous stack frame pointer
ret
