#include <stdio.h>
#include "test_equal.h"

int main(void) {
	char str1[]="abababa";
	char str2[]="abababa";
	char *a, *b;
	a=str1;
	b=str2;
	int result;
	result=test_equal(a,b);
	printf("\nResult: %d\n", result);
	char str3[]="abababa";
	char str4[]="ababababa";
	a=str3;
	b=str4;
	result=test_equal(a,b);
	printf("\nResult: %d\n", result);
	return 0;
}
		
