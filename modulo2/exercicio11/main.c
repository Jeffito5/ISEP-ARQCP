#include <stdio.h>
#include "asm.h"

int op1, op2;
char flags;

int main(void) {
	op1= 100000;
	op2= 200000;
	flags= test_flags();
	printf("100000 + 200000, %d\n", flags);
	
	op1= 30;
	op2= -40;
	flags= test_flags();
	printf("30 + 40, %d\n",flags);
	
	op1= 2147483600;
	op2= 40000;
	flags= test_flags();
	printf("2147483600 + 40000, %d\n", flags);
	
	return 0;
}
