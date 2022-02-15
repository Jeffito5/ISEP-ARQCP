#include <stdio.h>
#include "array_sort1.h"
int main(){
int vec1[]={45,12,23,3,47,6};
int n=6;
int i;
printf("\nThe array is:");
for(i=0; i<n; i++){
		printf("%i, ", vec1[i]);
	}
array_sort1(vec1,n);
printf("\nThe sorted array is:");
for(i=0; i<n; i++){
	printf("%i, ", vec1[i]);
}
return 0;

}
