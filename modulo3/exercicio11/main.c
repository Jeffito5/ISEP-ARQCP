#include <stdio.h>
#include "vec_greater20.h"
long long int *ptrvec;	
int num=10;
int result=0;
int main(void) {
	long long int vec[10]={21,34,12,456,10,865,21,34,56,13};
	ptrvec=vec;
	result=vec_greater20();
	printf("\nNumber of elements greater than 20: %d\n",result);
	return 0;
}
