#include <stdio.h>
#include <string.h>

int main(void){
	
	struct struct_u1{
		char vec[32];
		float a;
		int b;
	} u;
	
	struct struct_u1 * ptr = &u;
	
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
 *Depois de ser declarado em estrutura, o progama imprimiu sempre "arquitetura de computadores" com o campo 
 * vec (char[]), 123.5 com o campo a (float) e 2 com o campo b (inteiro). A diferença para a alínea anterior 
 * deve-se ao facto de que as estruturas não partilham a memória como as union. A estrutura 
 * definida tem 40 bytes. Assim, todos os campos têm o seu valor definido e não é subscrito pela atribuição dos outros
 * campos, como acontece nas union.
 **/
