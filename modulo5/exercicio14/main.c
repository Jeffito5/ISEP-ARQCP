#include <stdio.h>
#include "new_matrix.h"
#include "fill_matrix.h"
#include "add_matrixes.h"

int main(){
    int linhas = 3;
    int colunas = 3;

    int ** matriz1 = new_matrix(linhas, colunas);
    int ** matriz2 = new_matrix(linhas, colunas);

    fill_matrix(matriz1, linhas, colunas);
    fill_matrix(matriz2, linhas, colunas);

    printf("\nMatriz 1:\n");
    int i, j;
    for (i = 0; i < linhas; i++){
        for(j = 0; j < colunas; j++){
            printf("%d  ", matriz1[i][j]);
        }
        printf("\n");
    }

    printf("\nMatriz 2:\n");
    for (i = 0; i < linhas; i++){
        for(j = 0; j < colunas; j++){
            printf("%d  ", matriz2[i][j]);
        }
        printf("\n");
    }

    int ** result = add_matrixes(matriz1, matriz2, linhas, colunas);
    printf("\nSoma das matrizes 1 e 2:\n");
    for (i = 0; i < linhas; i++){
        for(j = 0; j < colunas; j++){
            printf("%d  ", result[i][j]);
        }
        
        printf("\n");
    }

    return 0;

}
