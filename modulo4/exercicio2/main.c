#include <stdio.h>
#include "sum_n.h"

int main(void) {
	int n=10,sum=0;
	sum=sum_n(n);
	printf("\nSum of the integers 1 to n: %d\n", sum);
	return 0;
}
