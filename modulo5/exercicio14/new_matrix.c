#include <stdlib.h>

int **new_matrix(int linhas, int colunas){
    int i; 
    int ** matriz = (int **) malloc(linhas * sizeof(int)); 
    int ** matriz1 = matriz;
    for(i=0; i < linhas; i++){ 
        *matriz1 = (int *) calloc(colunas, sizeof(int)); 
        matriz1++; 
    }
    return matriz; 
}
