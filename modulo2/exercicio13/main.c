#include <stdio.h>
#include "asm.h"

int base, height;
int area;
int main(void) {
	base=2;
	height=2;
	area=getArea();
	printf("\n Area: %d",area);
	
	base=43424;
	height=57;
	area=getArea();
	printf("\n Area: %d",area);
	
	base=125;
	height=222;
	area=getArea();
	printf("\n Area: %d\n",area);
	
	return 0;
	}
