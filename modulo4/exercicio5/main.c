#include <stdio.h>
#include "inc_and_square.h"

int main(void) {
	int v2=6;
	int a=4;
	int *v1;
	v1=&a;
	int result;
	result=inc_and_square(v1,v2);
	printf("\nThe square of v2 is: %d\n", result);
	return 0;
	
}
