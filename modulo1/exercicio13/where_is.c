int where_is (char *str, char c, int *p){
int numC=0;
int i=0;
while((*(str+i))!=0){
	if((*(str+i))==c){
		(*(p+numC))=i;
		numC++;
		}
	i++;
		}
	return numC;
		}
