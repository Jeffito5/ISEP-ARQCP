#include <stdio.h>
#include "palindrome.h"
int main(){
char str[]="Never odd or even";
int i;
printf("\nThe phrase is: %s \n",str);
i=palindrome(str);
printf("\n%d\n",i);
return 0;
}
