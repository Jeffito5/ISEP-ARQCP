void upper2(char *str){
	int i= 0;
	while(*(str+i)!=0){
		if(*(str+i)<123 && (*(str+i))>96){
			*(str+i) -= 32;
		}
		i++;
		}
}
