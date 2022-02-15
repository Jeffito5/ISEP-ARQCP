#include <stdio.h>
#include "new_matrix.h"

int main(){
	int linhas=10, colunas=2;
	int **nova_matriz; /** endereço da nova matriz **/
	nova_matriz=new_matrix(linhas,colunas);
	printf("\nThe new address is: %p\n", (*nova_matriz));
	return 0;
}
