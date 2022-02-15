#include <stdio.h>
#include "asm.h"

char word1[] = "vaca";
char word2[5];

char *ptr1;
char *ptr2;

int main(void) {
	
	ptr1 = word1;
	ptr2 = word2;
	
	str_copy_porto();
	
	printf("\nThe first word is %s and the second word is %s.\n", word1, word2);

	return 0;
}
