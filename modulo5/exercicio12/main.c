#include <stdio.h>
#include <stdlib.h>
#include "find_matrix.h"

int random_num(int min, int max){
    int number = min + rand() % (max - min);
    return number; 
}

int main(){
	int linhas=3, colunas=3, numEscolha=5, result, i, j;
	
	/** espaço para o endereço da matriz **/
	int **matriz=(int **) malloc(linhas*sizeof(int));
	int **matriz1 = matriz; 
	for(i=0;i<linhas;i++){ 
        *matriz1 =(int *) calloc(colunas, sizeof(int)); 
        matriz1++; 
    }
	
	/** colocar números random na matriz **/
	for(i=0;i<linhas;i++){
		for(j=0;j<colunas;j++){
			matriz[i][j]=random_num(1, 50);;
		}
	}
	
	/** imprimir a matriz **/
	for(i=0;i<linhas;i++){
		for(j=0;j<colunas;j++){
			printf("%d   ", matriz[i][j]);
		}
		printf("\n");
	}
	
	printf("\nNúmero a encontrar: %d\n", numEscolha);
	result=find_matrix(matriz,linhas,colunas,numEscolha);
	printf("Número encontrado=1 / Número não encontrado=0 / Resultado=%d\n", result);
	return 0;
} 
		
