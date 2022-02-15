#include <stdio.h>
#include "asm.h"

short s=0;

int main(void) {

	printf("Valor s:");
	scanf("%d",&s);

	s = swap_Bytes();
	printf("short = %hd\n", s);

	return 0;
}
