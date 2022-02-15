#include <stdio.h>
#include "rotate_left.h"
#include "rotate_right.h"

int main(){
	int num=10, nbits=3;
	int left, right;
	left=rotate_left(num,nbits);
	right=rotate_right(num,nbits);
	printf("\nLeft: %d", left);
	printf("\nRight: %d\n", right);
	return 0;
}
