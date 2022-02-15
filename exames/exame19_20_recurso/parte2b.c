/* Grupo II */

#include <stdio.h>
int right_shifts_are_arithmetic() {
 int x = -1; /* Todos os bits a 1 */
 return (x >> 1) < 0;
}

/* Existem diversas soluções para esta questão. O principal desafio é obter uma solução 
que se adapte a diferentes tamanhos usados na representação de um inteiro. A solução 
apresentada aplica um deslocamento para a direita a um valor cuja representação binária tem todos os
bits a 1. Se os deslocamentos forem aritméticos, o resultado do deslocamento ainda terá todos os bits 
a 1 e, por isso, será negativo. */
