#include <stdio.h>
#include "asm.h"

extern short s1;
extern short s2;
short crossSum=0;

int main(void) {

	crossSum= (short) crossSumBytes();
	printf("\ncross sum = %hu\n", crossSum);

	return 0;
}
