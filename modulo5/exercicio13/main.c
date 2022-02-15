#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"
#include "fill_matrix.h"
#include "count_odd_matrix.h"

int main(){
	int linhas=3, colunas=3, result, i, j;
	int ** matriz = new_matrix(linhas, colunas);
	fill_matrix(matriz, linhas, colunas);
	
	/** imprimir a matriz **/
	for(i=0;i<linhas;i++){
		for(j=0;j<colunas;j++){
			printf("%d   ", matriz[i][j]);
		}
		printf("\n");
	}
	
	result=count_odd_matrix(matriz,3,3);
	printf("Number of odd elements: %d", result);
	return 0;
}
	
