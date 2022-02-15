#include <stdio.h>
#include "upper2.h"

int main(){
	char word2[]= "PIZZA DE 2 queijos";
	printf("\n The word is %s", word2);
	
	upper2(word2);	
	printf("\n The formatted word is %s\n", word2);
	
	return 0;
}
