#include <stdio.h>
#include "count_even.h"

int main(void) {
	short vec1[10]={15,256,2,14,20,180,46,972,87,10};
	int n=10;
	short *vec;
	vec=vec1;
	int count=0;
	count=count_even(vec, n);
	printf("\nNumber of even numbers: %d\n", count);
	return 0;
	
}
