#include <stdio.h>
#include "activate_bits.h"

int main(){
	int a=621,left=4,right=87;
	int result;
	result=activate_bits(a,left,right);
	printf("\nbits to the left of left and to the right of right: %d\n", result);
	return 0;
}
