#include <stdio.h>
#include "asm.h"

short s1=0, s2=0, crossSum=0;

int main(void) {

	printf("Valor s1:");
	scanf("%hu",&s1);
	printf("Valor s2:");
	scanf(" %hu",&s2);
	
	crossSum= (short) crossSumBytes();
	printf("\ncross sum = %hu\n", crossSum);

	return 0;
}
