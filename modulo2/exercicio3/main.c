#include <stdio.h>
#include "asm.h"

int op1=0, op2=0,res=0;

int main(void) {

	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	
	sum_v2();
	printf("sum_v2 = %d : (15 - %d) - (15 - %d)", res, op1, op2);
	return 0;
}
