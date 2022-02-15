#include <stdio.h>
#include "power_ref.h"

int main(){
	int a = 2;
	int *x = &a;
	int y = 5;
	printf("\nThe base is %i and the exponent is %i", *x, y);
	
	power_ref(x, y);	
	
	printf("\nThe result is %i.\n", *x);
	
	return 0;
}
