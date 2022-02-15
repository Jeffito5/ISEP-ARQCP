void array_sort1(int *vec, int n){
int i, j, aux; 

  for(i =0; i < n; i++){ 
    j = i; 
 
    while((j != 0) && (vec[j] < vec[j - 1])) { 
      aux = vec[j]; 
      vec[j] = vec[j - 1]; 
      vec[j - 1] = aux; 
      j--;     
    } 
  }
  return;
	}
  
