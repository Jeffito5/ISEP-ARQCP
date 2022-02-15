#include <stdio.h>
#include "vec_search.h"
short int x=10;
short int *ptrvec;	
int num=10;
int main(void) {
	short int vec[10]={21,34,12,456,10,865,21,34,56,13};
	ptrvec=vec;
	/**(short*)**/vec_search();
	printf("\nMemory address is: %p",ptrvec);
	return 0;
}
