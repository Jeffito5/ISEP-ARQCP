.section .data
.global ptr1
.global ptr2

.section .text
.global  str_copy_porto2		# void str_copy_porto2(void)

str_copy_porto2:

# prologue
pushl %ebp 				#save previous stack frame pointer
movl %esp, %ebp 		#the stack frame pointer for sum function

movl ptr1, %edx
movl ptr2, %ecx

while_loop:
	movb (%edx), %al
	cmpb $0, %al
	je end
	cmpb $118, %al
	je lower
	cmpb $86, %al
	jne iteration_end
	movb $66, %al
	jmp iteration_end
	
	lower:
	movb $98 , %al
	
	iteration_end:
	movb %al, (%ecx)
	incl %edx
	incl %ecx
	jmp while_loop

end:
# epilogue
movl %ebp, %esp 		#restore the previous stack pointer ("clear" the stack)
popl %ebp 				#restore the previous stack frame pointer
ret

