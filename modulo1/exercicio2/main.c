#include <stdio.h>
#include "copy_vec.h"

int main(){
	int vec1[] = {1, 2, 3, 4, 5, 6};
	int vec2[6];
	int nInts = 4;
	
	copy_vec(vec1, vec2, nInts);

	printf("\nvec2 holds the following values copied from vec:");
	
	int i;
	for(i=0; i<nInts; i++){
		printf("%i ", vec2[i]);
}
	
	return 0;
}
