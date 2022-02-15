# include <stdlib.h>

char *new_str(char str[80]){
	char *ptr_char=(char *) malloc(1);
	int i=0;
	while(str[i] != '\0'){ 			/** enquanto o char não é null **/
         *(ptr_char+i) = str[i]; 	/** Copia o char da str para a nova str **/
		if(str[i+1] != '\0'){     	/** Se o próximo byte for null não adiciona mais espaço **/
            ptr_char = (char *) realloc(ptr_char, i+2); 	/**Se não for null, então redimensiona o tamanho da nova string 
															(i representa o tamanho da str - 1, 
															por isso adicionamos mais 2) **/
        }
        i++; 
    }
    return ptr_char;
}
