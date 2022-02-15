#include <stdlib.h>
#include "new_matrix.h"

int **add_matrixes(int ** matriz1, int ** matriz2, int linhas, int colunas) {
    int i, j;
    int ** ptrResult = new_matrix(linhas, colunas);	//Cria espaço para a matriz soma
    int ** ptrCopia = ptrResult;	//cópia da matriz
    int ** ptrLinha_m1 = matriz1;	//pointer para as linhas da matriz 1
    int ** ptrLinha_m2 = matriz2;	//pointer para as linhas da matriz 2
    
    for(i = 0; i < linhas; i++){
        int * ptr = *ptrCopia;	//em ptr fica o endereço dos elementos da linha
			for(j = 0; j < colunas; j ++){
				int soma = (*(*ptrLinha_m1)) + (*(*ptrLinha_m2));	//m1[i][j] + m2[i][j]
					*ptr = soma;
					(*ptrLinha_m1)++; //Proxima coluna da m1 (mesma linha)
					ptr++;  //Proximo espaço da matriz resultado
					(*ptrLinha_m2)++; //Proxima coluna da m2 (mesma linha)
				}
        //Próxima linha da m1, m2 e matriz resultado
			ptrLinha_m1++;
			ptrLinha_m2++; 
			ptrCopia++;
		}

    return ptrResult;
}
