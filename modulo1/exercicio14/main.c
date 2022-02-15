#include "frequencies.h"
#include <stdio.h>

int main(){
	float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
	int n = 11;
	int i;
	int freq[21] = {0};
	
	frequencies(grades, n, freq);
	
	printf("\nGrades (%d elements) = {", n);
	for(i = 0; i<n-1; i++){
		printf("%.2f, ", grades[i]);
	}
	printf("%.2f}\n", grades[n-1]);
	
	printf("Frequencies = {");
	for(i = 0; i<20; i++){
		printf("%d, ", freq[i]);
	}
	printf("%d}\n", freq[20]);
	
	return 0;
}
