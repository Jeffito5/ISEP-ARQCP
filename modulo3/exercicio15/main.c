#include <stdio.h>
#include "sum_first_byte.h"

	int num=5;
	unsigned int *ptrvec;	
	unsigned int sum;

int main(void) {
	unsigned int vec[5]={21,34,21,23,25};
	ptrvec=vec;
	sum=sum_first_byte();
	printf("\n Sum of the first byte of all numbers of vec: %d\n", sum);
	
	return 0;
}
