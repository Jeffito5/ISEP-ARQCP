/* Grupo II */

#include <stdio.h>

int is_big_endian() {
 /*MSB=0,LSB=1*/
 int x = 1;
 /* MSB (0) when big-endian, LSB (1) when little-endian */
 char byte = *(char *) &x;
return !byte;
}
/* Existem diversas formas de resolver este problema. A ideia básica é criar um valor com mais do que um byte com valores diferentes para os
bytes mais e menos significativos. Depois, basta ler o byte menos significativo e determinar o seu valor. Esta solução cria um inteiro com o
valor inicial 1, acedendo depois ao seu primeiro byte e convertendo-o para um inteiro. Este inteiro terá o valor 0 numa arquitetura big-endian e
1 numa arquitetura little-endian. */

