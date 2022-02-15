#include <stdio.h>
int main(){
char str[]="ISEP- Instituto Superior de Engenharia do Porto";
char word[]="Superior";
char *initial_addr;
char c;
initial_addr=&str[0];
find_word(str,word,initial_addr);
return 0;
}
