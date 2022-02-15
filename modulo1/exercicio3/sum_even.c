int sum_even( int *p, int num){
 int i;
 int count=0;
	 
 for(i=0;i<num;i++){
	if(*(p+i)%2==0){
	count=count+(*(p+i));
	
 }
 }
 return count;
 }


