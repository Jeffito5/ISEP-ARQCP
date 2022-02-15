int find_matrix(int **m, int y, int k, int num){
	int **linha=m; /** guarda o pointer para o primeiro elemento da matriz **/
    int *coluna=*linha; /** guarda o apontador para as colunas (apontado pela linha) **/
    int i,j;
    for(i=0;i<y;i++){
		for(j=0;j<k;j++){
			 if((*coluna)==num){
                return 1;
            }
            coluna++;
        }
        linha++;
        coluna = *linha;
    }
    return 0;
}
				
    
