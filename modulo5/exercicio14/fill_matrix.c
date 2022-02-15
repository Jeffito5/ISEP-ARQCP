#include <stdlib.h>

int random_num(int min, int max){
    int number = min + rand() % (max - min);
    return number; 
}

//Enche a matriz com numeros aleatorios de 1 a 10
void fill_matrix(int ** m, int linhas, int colunas){
    int i, j;
    for (i = 0; i < linhas; i++){
        for(j = 0; j < colunas; j++){
            m[i][j] = random_num (1, 10);
        }
    }
}

