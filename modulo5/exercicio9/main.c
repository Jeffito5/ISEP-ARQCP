#include <stdio.h>
#include "fun.h"

int main(){
	structA sa;
	structA *ptr_sa=&sa;
	ptr_sa->x=10;
	ptr_sa->y=20;
	
	structB sb;
	structB *ptr_sb=&sb;
	ptr_sb->a=sa;
	ptr_sb->b=ptr_sa;
	ptr_sb->c=1;	
	ptr_sb->e[0]=2;
	ptr_sb->e[1]=4;
	ptr_sb->e[2]=6;
	ptr_sb->x=10;
	ptr_sb->y=15;
	ptr_sb->z=20;
	
	short fun_one = fun1(ptr_sb);
    short fun_two = fun2(ptr_sb);
    short * fun_three = fun3(ptr_sb);
    short fun_four = fun4(ptr_sb);
    printf("s->a.x= %d\n", fun_one);
    printf("s->z= %d\n", fun_two);
    printf("&s->z = %p\n", fun_three);
    printf("s->b->x = %d\n", fun_four);

    return 0;
}    
 

	
