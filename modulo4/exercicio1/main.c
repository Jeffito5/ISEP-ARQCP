#include <stdio.h>
#include "cube.h"

int main(void) {
	unsigned int result;
	int x=2;	
	result=cube(x);
	printf("The cube to the chosen number is: %d\n", result);
	return 0;
	
}
