#include <stdio.h>
#include "upper1.h"

int main(){
	char word1[]= "PIZZA DE 2 queijos";
	printf("\n The word is %s", word1);
	
	upper1(word1);	
	printf("\n The formatted word is %s\n", word1);
	
	return 0;
}
