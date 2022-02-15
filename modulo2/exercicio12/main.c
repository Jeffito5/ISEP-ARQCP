#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;
unsigned char flag;

int main(void) {

	op1 = 2;
	op2 = 20;
	flag = isMultiple();
	printf("\nIs 2 multiple of 20? %u", flag);

	op1 = 3;
	op2 = 20;
	flag = isMultiple();
	printf("\nIs 3 multiple of 20? %u\n", flag);
	return 0;
}
