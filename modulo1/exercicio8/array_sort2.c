void array_sort2(int *vec, int n){
	
  int j, i, swap;
  int *t;
 
  for (j= 0; j< n-1; j++){
	swap = 0;
    for (i= 0 ; i< n-j-1; i++){
      if (*(vec+i) > *(vec+i+1)){
		t = *(vec+i);
        (*(vec+i) = *(vec+i+1));
        *(vec+i+1) = t;
        swap =1;
      }
    }
    if (swap == 0){
	break;
	}
  }
	return;
}
