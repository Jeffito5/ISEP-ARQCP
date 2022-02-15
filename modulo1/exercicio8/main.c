#include <stdio.h>
#include "array_sort2.h"

int main(){
	int vec[]= {6, 7, 2, 3, 1, 8, 5 ,8};
	int n= 8;
	int vec2[]= {64, 71, 100, 3, 12, 8, 53 ,18};
	int n2= 8;
	int i;
	
	array_sort2(vec, n);
	printf("\nThe sorted array is:");
	
	for(i=0; i<n; i++){
		printf("%i, ", vec[i]);
	}

	array_sort2(vec2, n2);
	printf("\nThe sorted array is:");
	
	for(i=0; i<n; i++){
		printf("%i, ", vec2[i]);
	}
	return 0;
}
