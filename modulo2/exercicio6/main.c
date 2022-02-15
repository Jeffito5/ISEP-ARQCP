#include <stdio.h>
#include "asm.h"

char byte1=0, byte2=0;
short sum= 0;
int main(void) {

	printf("Valor byte1:");
	scanf("%c",&byte1);
	
	printf("Valor byte2:");
	scanf(" %c",&byte2);
	
	sum= (short) concatBytes();
	printf("\nsum = %hu \n", sum);

	return 0;
}
