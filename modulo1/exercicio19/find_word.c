#include <stdio.h>
char find_word(char *str, char *word, char *initial_addr){
int i=0;
while(*(str+i)!=0){
		if((*(str+i)>64 && *(str+i)<91) || (*(str+i)>96 && *(str+i)<124)){
			if(*(str+i)==*word){
				return *(initial_addr+i);
				printf("\n%c",*(initial_addr+i));
		}
			}
			i++;
		}
	}

		
