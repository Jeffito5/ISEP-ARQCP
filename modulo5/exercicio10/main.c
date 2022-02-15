#include <stdio.h>
#include "new_str.h"

int main(){
	char str[80]="Disciplina de ARQCP";
	char *nova_string=new_str(str);
	printf("\nPrevious string: %s\n", str);
	printf("New string: %s\n", nova_string);
    return 0;
}
	
