.section .data
.global op1
.global op2
.global flags

.section .text
.global test_flags 		# char test_flags(void)

test_flags:

# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	movl op1, %eax
	movl op2, %ebx
	adcl %eax, %ebx
	movb $0, %al
	jo	 .L6
	jc	 .L7
	jmp  .L8

.L6:
	movb $1, %al
	jmp .L8				#if OF
.L7:
	movb $1, %al		#if CF
.L8:
# epilogue
	movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
	popl %ebp 			#restore the previous stack frame pointer
	ret
