.section .data
.global byte1
.global byte2

.section .text
.global concatBytes

concatBytes:

# prologue
pushl %ebp 			# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

movb byte1, %al
movb byte2, %ah

# epilogue
movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
popl %ebp 			#restore the previous stack frame pointer
ret
