#include <stdio.h>
#include "odd_sum.h"

int main(){
	int vec[]={8, 7, 3, 3, 1, 8, 5 ,8, 34};
	int vec2[]={8, 71, 71, 3, 12, 8, 53, 18, 9};
	int sum;
	int *p= vec;
	sum= odd_sum(p);
	printf("\nThe sorted array holds %i values and its sum is %i.", p[0], sum);
	
	p= vec2;
	sum= odd_sum(p);
	printf("\nThe sorted array holds %i values and its sum is %i.\n", p[0], sum);
	
	return 0;
}
