#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;
extern int op3;
extern int op4;

int main(void) {

	printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);
	
	sum_v3();
	printf("sum = %d\n", op4);

	return 0;
}
