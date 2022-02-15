#include <stdio.h>
#include <string.h>

int main(void){
	
	union union_u1{
		char vec[32];
		float a;
		int b;
	} u;
	
	union union_u1 * ptr = &u;
	
	strcpy(ptr->vec,"arquitectura de computadores");
	printf("[1]=%s\n",ptr->vec);
	ptr->a=123.5;
	printf("[2]=%f\n",ptr->a);
	ptr->b=2;
	printf("[3]=%d\n",ptr->b);
	
	
	printf("[1]=%s\n",ptr->vec);
	printf("[2]=%f\n",ptr->a);
	printf("[3]=%d\n",ptr->b);

	return 0;
}
/**
 *O programa imprime primeiro "arquitetura de computadores", em segundo 123.5 e em terceiro 2.
 * Depois, nas 3 seguintes impressões, imprime o valor 2 (que foi a última atribuição) em formato string, float e 
 * finalmente em inteiro. Como se trata de um número inteiro, nas impressões de string e float o resultado
 * será o inteiro 2 em float(0.000000) e em string. Isto deve-se ao facto de, numa union, apenas podemos utilizar 
 * um campo de cada vez. Esta union tem um tamanho de 32 bits (todas as variáveis têm este tamanho) e esta memória
 * é partilhada por todos os elementos. Quando atribuimos 2 ao campo b, interfere com todos os campos, sendo este
 * o único valor guardado.
 *  **/
