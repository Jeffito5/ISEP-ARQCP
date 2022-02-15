#include <stdio.h>
#include "sort_without_reps.h"
int main(){
	int n=6;
	int i;
	int src[]={34,65,23,2,13,56};
	int dest[n];
	int count=sort_without_reps(src, n, dest);
	printf("\nNumber of items placed in the second array: %d\n",count);
	printf("\nThe second array is:");
	for(i=0; i<n; i++){
		printf("%i, ", dest[i]);
	}
	return 0;
}

	
	


