#include <stdio.h>
#include "swap.h"
int main(){
int size=6;
int i;
int *vec1,*vec2;
int v1[]={23,56,2,23,3,6};
int v2[]={24,57,3,24,4,7};
vec1=&v1[0];
vec2=&v2[0];
printf("\nVec1 before swap:");
for(i=0; i<size; i++){
		printf("\n%d:",*(v1+i));
	}
printf("\nVec2 before swap:");
	for(i=0; i<size; i++){
		printf("\n%d:",*(v2+i));
	}
swap(vec1,vec2,size);
printf("\nVec1 after swap:");
for(i=0; i<size; i++){
		printf("\n%d:",*(v1+i));
	}
printf("\nVec2 after swap:");
	for(i=0; i<size; i++){
		printf("\n%d:",*(v2+i));
	}
return 0;

}

