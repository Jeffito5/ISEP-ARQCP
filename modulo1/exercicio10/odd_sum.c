int odd_sum(int *p){
	int n= p[0];
	int sum= 0;
	int i;
	for(i= 1; i<n+1; i++){
		if(p[i]%2!=0){
			sum+=p[i];
			}
	}
	return sum;
}
