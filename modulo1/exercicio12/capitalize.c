void capitalize(char *str){
	int i= 0;
	int newWord = 0;
	while(str[i]!=0){
		if(str[i]==32){
			newWord = 1;
		}
		if(newWord == 1 && str[i]>96 && str[i]<123){
			str[i] = str[i] - 32;
			newWord = 0;
		}
		i++;
	}
}
