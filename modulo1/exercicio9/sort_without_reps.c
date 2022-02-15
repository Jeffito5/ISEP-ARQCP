int sort_without_reps(int *src, int n, int *dest){
int i,j,k,a,b,c,aux,contRepetidos;
contRepetidos=0;
for(i=0;i<n;i++){          //preenchimento de elementos de um vetor no outro
	dest[i]=src[i];
}    
	for(j =0; j < n; j++){      //ordenação do array
    k = j; 
 
    while((k != 0) && (dest[k] < dest[k - 1])) { 
      aux = dest[k]; 
      dest[k] = dest[k - 1]; 
      dest[k - 1] = aux; 
      k--;     
    } 
  }
    for( a = 0; a < n; a++ ){   //eliminar valores repetidos
        for( b = a + 1; b < n; b++){
			if( (*(dest+b)) == (*(dest+a)) ){
            for( c = b; c < n; c++ ){
                    (*(dest+c)) = (*(dest+c+1));
                    n--;
                    contRepetidos++;
            }
            }else{
            
                b++;
                
            }
        }
	}
	n=n-contRepetidos;
	return n;
}	
	



                
