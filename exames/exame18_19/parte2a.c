/* Grupo II */

#include <stdio.h>
int main() {
	int x = 0x15213F10 >> 4;
	char y = (char)x;
	unsigned char z = (unsigned char)x;
	printf("y = %d, z = %u", y, z);
	return 0;
}
/* Hipótese b). Ao fazermos o cast de x o valor que vai ficar em y
 * será 0xF1. Em 2's complement o valor seria -15 mas sem ser número negativo 
 * ficaria 241. */
