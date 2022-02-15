#include <stdio.h>
#include "array_sort.h"

	int num=5;
	unsigned int *ptrvec;	

int main(void) {
	unsigned int vec[5]={21,34,21,23,25};
	ptrvec=vec;
	int i;
	printf("\nThe array is:");
	for(i=0; i<5; i++){
		printf("%i, ", *(vec+i));
	}
	array_sort();
	printf("\nThe sorted array is:");
	for(i=0; i<5; i++){
		printf("%i, ", *(vec+i));
	}
	
	return 0;
}
