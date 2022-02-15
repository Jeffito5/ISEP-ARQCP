#include <stdio.h>
#include "asm.h"

short current=0,desired=0;
int final=0;

int main(void) {
	printf("Temperatura no momento:");
	scanf("%hi",&current);
	printf("Temperatura desejada:");
	scanf("%hi",&desired);
	final = needed_time();
	printf("Tempo necessário = %d segundos\n", final);
	return 0;
}
