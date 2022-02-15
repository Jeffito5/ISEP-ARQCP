#include <stdio.h>
#include "asm.h"

signed char A = 10;

signed short B = 20; 

signed int C = 30000;

signed int D = 30000;

signed long long op = 0;

int main(void) {
	printf("\nIntended result: 30000 + 10 - 30000 + 20 = 30");
	op = sum_and_subtract();
	printf("\nC + A - D + B = %llu\n", op);

	return 0;
}
