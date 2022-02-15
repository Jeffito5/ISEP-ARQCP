#include <stdio.h>

union union_u1{
	char vec[32];	/* 32 bytes */
	float a;		/* 4 bytes */	
	int b;			/* 4 bytes */
} u;

struct struct_s1{
	char vec[32];	/* 32 bytes */
	float a;		/* 4 bytes */	
	int b;			/* 4 bytes */
} s;

int main(void) {
	printf("\nSize of union: %d\n", sizeof(u));		/* 32 */
	printf("\nSize of struct: %d\n", sizeof(s)); 	/* 40 */
	return 0;
}

/* O resultado de union dá 32 porque esta ocupa o mesmo espaço na memória
 * que o maior elemento. Neste caso, o maior é o char vec que ocupa 32 bytes.
 * Ou seja, para alocar a union é necessário, no mínimo, 32 bytes. */ 

/* O resultado de struct dá 40. Cada estrutura tem um alinhamento K que é o tamanho do
 * seu maior membro. Como se verifica, o maior é 4 (int ocupa 4 bytes tal
 * como o float). Assim, o endereço inicial da estrutura tem de ser múltiplo de 4
 * tal como o valor total do tamanho da estrutura. 40 é múltiplo de 4 daí ser o 
 * tamanho da estrutura. Contudo, se colocássemos o char vec[34] o resultado daria 
 * 42 bytes. Assim, o tamanho da estrutura iria ser 44 por ser o seguinte múltiplo
 * de 4.  */
