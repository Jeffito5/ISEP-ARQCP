#include <stdio.h>
#include "decrypt_encrypt.h"

char *ptr1;
char even;

int main(void) {	
	int contagem = -1;
	int contagem2 = -1;
	char str[]="O rato roeu a rolha da garrafa do rei da Rússia";
	printf("\nFrase: %s\n",str);
	ptr1=str;
	contagem=encrypt();
	printf("Frase encriptada %s e número de caracteres decriptados: %d\n",ptr1,contagem);
	contagem2=decrypt();
	printf("Frase descriptada %s e número de caracteres encriptados: %d\n",ptr1,contagem2);
	return 0;
}
