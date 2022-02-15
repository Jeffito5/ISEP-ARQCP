#include <stdio.h>
#include "sum_smaller.h"

int main(void) {
	int num1=10,num2=20,sum=0;
	int *smaller;
	int vec[1];
	smaller=vec;
	sum=sum_smaller(num1,num2,smaller);
	printf("\nSum of num1 and num2: %d\n", sum);
	printf("\nSmaller number: %d\n", *smaller);
	return 0;
}
