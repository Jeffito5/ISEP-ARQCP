#include <stdio.h>
#include "greatest.h"

int main(void) {
	int a=50,b=2843,c=4;
	int big;
	printf("\nNumbers: %d, %d, %d\n", a, b, c);
	big=greatest(a,b,c);
	printf("The greatest is: %d\n", big);
	return 0;
}
