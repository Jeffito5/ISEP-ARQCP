#include <stdio.h>
#include "capitalize.h"

int main(){
	char word1[] = "Uma frase com alguma COISA.";
	printf("\nOriginal sentence: %s\n", word1);
	
	capitalize(word1);
	
	printf("New sentence: %s\n", word1);
	return 0;
}
