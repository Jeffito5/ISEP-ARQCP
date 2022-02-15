#include <stdio.h>
#include "where_is.h"
int main(){
char str[]="The final content of vec should be printed in the main function.";
char c = 99;
int tam=100;
int vec[tam];
int *p;
int i;
p=&vec[0];
int occurrences=where_is(str,c,p);
for (i=0;i<occurrences;i++){
	printf("%d, ", (*(p+i)));
}
printf("\nNumber of occurrences: %d",occurrences);
return 0;
}
