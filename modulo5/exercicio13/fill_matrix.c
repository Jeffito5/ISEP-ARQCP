#include <stdlib.h>

int random_num(int min, int max){
    int number = min + rand() % (max - min);
    return number; 
}

//Enche a matriz com numeros aleatorios de 1 a 20
void fill_matrix(int ** m, int nLinhas, int nColunas){
    int i, j;
    for (i = 0; i < nLinhas; i++){
        for(j = 0; j < nColunas; j++){
            m[i][j] = random_num (1, 20);
        }
    }
}

