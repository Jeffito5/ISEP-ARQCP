.section .data
.global s

.section .text
.global swap_Bytes 		# short swap_Bytes(void)

swap_Bytes:

# prologue
pushl %ebp 			# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

movw s, %ax

movb %al, %bl
movb %ah, %al
movb %bl, %ah

# epilogue
movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
popl %ebp 			#restore the previous stack frame pointer
ret
