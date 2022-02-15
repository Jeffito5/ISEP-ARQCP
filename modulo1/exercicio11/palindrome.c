int palindrome(char *str){
int i,j,n,flag;
n=sizeof(str);
for (i=0;i<n;i++){
	for(j=n-1;j>0;j--){
		if((*(str+i))!=(*(str+j))){
		flag=0;
		}else{
			flag=1;
		
		}
		}
		
		}
return flag;
}
