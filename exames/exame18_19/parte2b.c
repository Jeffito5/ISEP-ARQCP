/* Grupo II */

#include <stdio.h>

int main2() {
	int x;
	printf("Please input an integer:");
	scanf("%d",&x);
	printf("%d", (!!x)<<31);
	return 0;
}
/* Hipótese c). O operador ! passa o 0 para 1 e todos os números positivos
 * e negativos para 0. Assim, utilizando-o 2 vezes o 0 será sempre 0 e os restantes 
 * números serão sempre 1. Ao deslocarmos 31 bits para a esquerda estamos a preencher
 * o número com 0s. Assim, e se o int digitado for 0 o output será 0. Se o int
 * digitado for outro número qualquer será o INT_MIN. */

