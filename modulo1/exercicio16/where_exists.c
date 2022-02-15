#include <stdio.h>
char* where_exists(char* str1, char* str2){
	char* ptr = NULL;
	int i= 0;
	int j= 0;
	
	while(str2[i]!=0){
		while(str2[i+j]==str1[j]){
			j++;
		}
		if(str1[j]==0){
			ptr= (str2+ i);
			break;
		}
		j=0;
		i++;
	}
	
	return ptr;
}
