.section .data
.global ptr1

.section .text
.global  encrypt	# int encrypt(void)

encrypt:

# prologue
pushl %ebp 				#save previous stack frame pointer
movl %esp, %ebp 		#the stack frame pointer for sum function

#32 is ascii for space
#97 is ascii for a

movl ptr1, %edx 		#move adress of string to edx
movl $0, %eax			#intializing counter to 0

while_str:
cmpb $0, (%edx)
je end
cmpb $32, (%edx)		#check if space
je next_iteration		#if space move on
cmpb $97, (%edx)		#check if "a"
je next_iteration		#if "a" move on

incl %eax				#inc the number of changes
addb $2, (%edx)			#encrypt char

	next_iteration:		
	incl %edx
	jmp while_str

end:	
# epilogue
movl %ebp, %esp 		#restore the previous stack pointer ("clear" the stack)
popl %ebp 				#restore the previous stack frame pointer
ret

