int count_bits_zeroc(int x){ //10- 00001010 counter=30
	int counter=0,i;
	for(i=1;i<33;i++){
		int mask=1<<i;
		int masked_n=x & mask;
		int bit=masked_n>>i;
		if(bit==0){
			counter++;
		}
	}
	return counter;
}
	
