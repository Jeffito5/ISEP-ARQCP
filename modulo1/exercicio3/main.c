#include <stdio.h>
#include "sum_even.h"

int main () {
	int vec[]={1,2,3,4,5,6};
	int *p;
	p=&vec[0];
	int num=6;
	int count=sum_even(p, num);
	printf("\nThe sum of the even elements is %d\n", count);
	return 0; 
}
