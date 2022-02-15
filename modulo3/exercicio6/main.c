#include <stdio.h>
#include "asm.h"

char word1[] = "Frase encriptada";


char *ptr1;

int main(void) {
	int contagem = -1;
	ptr1 = word1;
	
	contagem = encrypt();
	
	printf("\nThe encrypted string is %s and the number of encrypted characters is %i.\n", ptr1, contagem);

	return 0;
}
