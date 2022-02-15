#include <stdio.h>
#include "asm.h"

int A,B,C,D;
int res;
int main(void) {
	A=22;
	B=1450;
	C=300050;
	D=1400000;
	res=compute();
	printf("\n ((A * B) + C) /D : %d",res);
	
	A=59000;
	B=723000;
	C=1482000;
	D=5002;
	res=compute();
	printf("\n ((A * B) + C) /D : %d",res);
	
	A=53;
	B=247;
	C=1125;
	D=554;
	res=compute();
	printf("\n ((A * B) + C) /D : %d\n",res);
	
	return 0;
	}
	
