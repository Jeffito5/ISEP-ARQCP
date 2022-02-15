.section .data
.global op1
.global op2
.global res
CONST:
		.int 15
.section .text
.global sum_v2 		# int sum_v2(void)

sum_v2:
# prologue
pushl %ebp 			# save previous stack frame pointer
movl %esp, %ebp		# the stack frame pointer for sum function

movl $CONST, %eax	#place CONST value in eax
movl op1, %ebx		#place op1 in ebx
sub %ebx, %eax		#sub ebx to eax. Result is in eax (first sub)

movl $CONST, %ebx	#place CONST value in ebx
movl op2, %ecx		#place op2 in ecx
sub %ecx, %ebx		#sub ecx to ebx. Result is in ebx (second sub)

sub %ebx, %eax		#sub ecx to eax. Result is in eax (final sub)
movl %eax, res		#move operation to res

# epilogue
movl %ebp, %esp
popl %ebp
ret
