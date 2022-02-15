# include <stdlib.h>
#include <stdio.h>

int **new_matrix(int lines, int columns){
	int **matriz; /** endereço da matriz **/
	matriz=(int **) calloc(lines,sizeof(int*));
	
	if(matriz==NULL){
		printf ("Error reserving memory.\n");
	}
	
	int i;
	for(i=0;i<columns;i++){
		*(matriz+i)=(int *) calloc(columns,sizeof(int));
		if(matriz[i]== NULL){
			printf ("Error reserving memory.\n");
		}
	}
	return matriz;
}
