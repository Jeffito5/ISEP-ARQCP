#include <stdio.h>
#include <stdlib.h>
#include "return_unionB_b.h"
int main(){
    int linhas=4;
    int colunas=3;
    int i;
    structA **matriz=(structA **) malloc(linhas * sizeof(structA*));
    structA **matriz1=matriz; 
    for(i=0;i<linhas;i++){ 
        *matriz1=(structA *) calloc(colunas, sizeof(structA)); 
        matriz1++; 
    }
    return 0;
}
