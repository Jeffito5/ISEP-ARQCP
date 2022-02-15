#include <stdio.h>
#include "vec_avg.h"
int num=10;
int *ptrvec;	
int sum=0,avg=0;
int main(void) {
	int vec[10]={21,34,12,456,23,865,21,34,56,13};
	ptrvec=vec;
	avg=vec_avg();
	printf("\n Avg: %d\n",avg);
	return 0;
}
int vec_sum(void){
	int i;
	for(i=0;i<10;i++){
		sum+=*(ptrvec+i);
	}
	printf("\nSum: %d",sum);
	return sum;
}
