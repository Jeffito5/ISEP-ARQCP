#include <stdio.h>
#include "asm.h"

int main(void) {
	int j=4342;
	int k=5567;
	long long r=0;
	r=(long long) j+k;
	printf("%lld\n",r);
	long long a=0;
	a=sum2ints();
	printf("sum: %lld\n",a);
	return 0;
}
