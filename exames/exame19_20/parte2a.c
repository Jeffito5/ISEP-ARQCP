/* Grupo II */

#include <stdio.h>
int main(){
	int a=10, k1=17, k2=-7, k3=30, k4=-56;
	printf("\n a*k1= %d", a*k1);
	printf("\n a*k2= %d", a*k2);
	printf("\n a*k3= %d", a*k3);
	printf("\n a*k4= %d\n", a*k4);
	printf("\nResultados esperados:\n");
	int result1=0, result2=0, result3=0, result4=0;
	/* a) */
	result1=a<<4;
	result1=result1+a;
	/* b) */
	result2=-(a<<3);
	result2=result2+a;
	/* c) */
	result3=a<<5;
	result3=result3-(a<<1);
	/* d */
	result4=-(a<<6);
	result4=result4+(a<<3);
	printf("\nAlínea a: %d\n", result1);
	printf("Alínea b: %d\n", result2);
	printf("Alínea c: %d\n", result3);
	printf("Alínea d: %d\n", result4);
	return 0;
}
