#include <stdio.h>
#include "asm.h"

int n1=0,n2=0,a=0,b=0,c=0,d=0,e=0,f=0,g=0;
int main(void) {

	int choice;
	

	do{
		 printf("Welcome to the calculator:\n");
		 printf("1. Sum\n");
		 printf("2. Subtraction\n");
		 printf("3. Multiplication:\n");
		 printf("4. Division:\n");
		 printf("5. Modulus:\n");
		 printf("6. Power of 2:\n");
		 printf("7. Power of 3:\n");
		 printf("8. Exit\n");
		 scanf("%d",&choice);
  
		switch (choice){
			   case 1: printf("Enter 2 numbers:\n");
			   scanf("%d",&n1);
			   scanf("%d",&n2);
			   a=sum();
			   printf("The result is:%d\n",a);
			   break;
			
			   case 2: printf("Enter 2 numbers:\n");
			   scanf("%d",&n1);
			   scanf("%d",&n2);
			   b=subtract();
			   printf("The result is:%d\n",b);
			   break;
			
			   case 3: printf("Enter 2 numbers:\n");
			   scanf("%d",&n1);
			   scanf("%d",&n2);
			   c=mul();
			   printf("The result is:%d\n",c);
			   break;
			
			   case 4: printf("Enter 2 numbers:\n");
			   scanf("%d",&n1);
			   scanf("%d",&n2);
			   d=div();
			   printf("The result is:%d\n",d);
			   break;
			
			   case 5: printf("Enter 2 numbers:\n");
			   scanf("%d",&n1);
			   scanf("%d",&n2);
			   e=mod();
			   printf("The result is:%d\n",e);
			   break;
			
			   case 6: printf("Enter 1 number:\n");
			   scanf("%d",&n1);
			   f=power2();
			   printf("The result is:%d\n",f);
			   break;
			
			   case 7: printf("Enter 1 number:\n");
			   scanf("%d",&n1);
			   g=power3();
			   printf("The result is:%d\n",g);
			   break;
			
			   case 8: printf("Thank you for your choice!\n"); 
			   break;
			
			   default: printf("Wrong choice. Enter again please\n");
               break;
		} 
 
	} while (choice != 8);
	return 0;
}
