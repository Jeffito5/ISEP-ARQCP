#include <stdio.h>
#include "frequencies.h"

	char num=10;
	unsigned char *ptrgrades, *ptrfreq;
	
int main(void) {
	unsigned char vec1[10]={13.3,15.5,18.8,19.1,20,10.4,12.2,13.5,15.4,16};
	unsigned char vec2[];
	ptrgrades=vec1;
	ptrfreq=vec2;
	int i;
	printf("\nGrades are:");
	for(i=0; i<10; i++){
		printf("%i, ", *(vec1+i));
	}
	frequencies();
	printf("\nAbsolute grades are:");
	for(i=0; i<5; i++){
		printf("%i, ", *(vec2+i));
	}
	return 0;
}
