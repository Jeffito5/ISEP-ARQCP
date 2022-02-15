/* Grupo II */

#include <stdio.h>
unsigned int replace_byte (unsigned int x, int i, unsigned char b){
	int num_bits = i << 3;
	unsigned mask = ~(0xFF << num_bits);
	return (x & mask) | (b << num_bits);
}

