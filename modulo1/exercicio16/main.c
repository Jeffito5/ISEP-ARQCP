#include <stdio.h>
#include "where_exists.h"

int main(){
	char str1[]= "de";
	char str2[]= "Pizza de queijo";
	char *ptr;
	printf("\nstr1: %s\nstr2: %s", str1, str2);
	
	ptr = where_exists(str1, str2);
	
	int pos= (ptr- str2);
	printf("\nPosition: %i\n",pos);
	
	return 0;
}
