#include <stdio.h>
#include "asm.h"

int currentSalary=0,code=0;

int main(void) {
	int a=0,b=0,c=0,d=0;
	
	do{
		 printf("Our company will raise the salary of our employees. Please enter de code of your position.\n");
		 printf("10. Manager\n");
		 printf("11. Engineer\n");
		 printf("12. Technician:\n");
		 printf("13. All other positions:\n");
		 printf("0. Exit\n");
		 scanf("%d",&code);
  
		switch (code){
			   case 10: printf("Enter your current salary.\n");
			   scanf("%d:",&currentSalary);
			   printf("Your raise: 300 euros\n");
			   a=new_salary();
			   printf("New salary:%d\n",a);
			   break;
			
			   case 11: printf("Enter your current salary.\n");
			   scanf("%d:",&currentSalary);
			   printf("Your raise: 250 euros\n");
			   b=new_salary();
			   printf("New salary:%d\n",b);
			   break;
			
			   case 12: printf("Enter your current salary.\n");
			   scanf("%d:",&currentSalary);
			   printf("Your raise: 150 euros\n");
			   c=new_salary();
			   printf("New salary:%d\n",c);
			   break;
			
			   case 13: printf("Enter your current salary.\n");
			   scanf("%d:",&currentSalary);
			   printf("Your raise: 100 euros\n");
			   d=new_salary();
			   printf("New salary:%d\n",d);
			   break;
			   
			   case 0: printf("Thank you!\n"); 
			   break;
			
			   default: printf("Wrong choice. Enter again please\n");
               break;
               
               } 
 
	} while (code != 0);
	return 0;
}
