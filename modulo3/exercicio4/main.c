#include <stdio.h>
#include "vec_add_one.h"
int num=10;
int *ptrvec;
int main(void) {
	int vec[10]={1,2,3,4,5,6,7,8,9,9};
	ptrvec=vec;
	vec_add_one();
	int i;
	for(i=0;i<num;i++){
		printf("\n%i ",*(vec+i));
	}
	return 0;
}
