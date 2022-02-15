.section .data
.global A
.global B
.global C
.global D
.global op

.section .text
.global sum_and_subtract 	#C + A - D + B

sum_and_subtract:

# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function

movl C, %ecx			# %ebx : C
movb A, %al				# %al : A
cbw						# %ax := al : A
cwde					# %eax := ax : A
adcl %eax, %ecx			# %ecx : C + A

movl D, %eax			# %eax : D
sbbl %eax, %ecx			# %ecx : C + A - D

movw B, %ax				# %ax : B
cwde					# %eax := %ax : B
adcl %ecx, %eax			# %eax : C + A - D + B
movl $0, %edx

# epilogue
movl %ebp, %esp 	#restore the previous stack pointer ("clear" the stack)
popl %ebp 			#restore the previous stack frame pointer
ret
