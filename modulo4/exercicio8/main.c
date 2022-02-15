#include <stdio.h>
#include "calc.h"

int main(void) {
	int a=10,b=20,c=30,result;
	result=calc(a,&b,c);
	printf("c*z-2 = %d\n", result);
	return 0;
}
