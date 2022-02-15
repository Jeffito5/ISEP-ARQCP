#include <stdio.h>
#include "keep_positives.h"

int *ptrvec;	
int num=10;

int main(void) {
	int i;
	int vec[10]={21,34,-12,456,10,865,-21,34,56,13};
	ptrvec=vec;
	keep_positives();
	for(i=0;i<num;i++){
		printf("%i",*(ptrvec+i));
	}
	return 0;
}
