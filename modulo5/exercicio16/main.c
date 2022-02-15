#include <stdio.h>
#include "group1.h"
#include "aprovados.h"

int main(){
    int i;
    int estudantes=3;
    unsigned char notas[]={0b00000101, 0b00001001, 0b1111000}; /** 5,9 e 240 **/
    unsigned char *notas1=notas;
    group grupo;
    group *g= &grupo;
    group1(g,estudantes,notas1);

    printf("Número de estudantes: %d\n\n",g->n_students);
    for(i=0;i< estudantes;i++){
        printf("Notas %dº: %d\n",i+1,g->individual_grades[i]);
    }
    printf("\n");
    
	int resultado=aprovados(g);
    printf("Nº de alunos aprovados: %d\n",resultado);

    return 0;
}
