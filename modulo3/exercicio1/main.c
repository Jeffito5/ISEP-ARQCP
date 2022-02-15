#include <stdio.h>
#include "asm.h"

int main(void) {
	int a=0;
	char str[]="O jogador teve uma avaliação 10/10";
	printf("\nFrase: %s\n",str);
	a=zero_count();
	printf("Número de '0' na frase: %d\n",a);
	return 0;
	
}
