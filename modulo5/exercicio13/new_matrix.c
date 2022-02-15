#include <stdlib.h>
#include <stdio.h>

int **new_matrix(int linhas, int colunas){
	int i;
	int **matriz; /** endereço da matriz **/
	matriz=(int **) calloc(linhas,sizeof(int*));
	
	if(matriz==NULL){
		printf("Error reserving memory.\n");
	}

	for(i=0;i<colunas;i++){
		*(matriz+i)=(int *) calloc(colunas,sizeof(int));
		if(matriz[i]== NULL){
			printf("Error reserving memory.\n");
		}
	}
	return matriz;
}
