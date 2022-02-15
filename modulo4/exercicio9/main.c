#include <stdio.h>
#include "calculate.h"

int main(void) {
	int o1=2,o2=6;
	int res;
	res=calculate(o1,o2);
	printf("(a+b)-(a*b)= %d\n", res);
	return 0;
}
void print_result(char op, int o1, int o2, int res){
	printf("%d %c %d = %d\n", o1, op, o2, res);
}
