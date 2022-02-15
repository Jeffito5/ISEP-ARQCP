#include <math.h>
#include <stdio.h>
void frequencies(float *grades, int n, int *freq){
	int i;
	int abs;
	for(i= 0; i<n; i++){
		abs = *(grades + i);
		*(freq + abs) += 1;
	}
}
