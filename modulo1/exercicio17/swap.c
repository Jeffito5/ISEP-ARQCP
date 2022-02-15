void swap(int *vec1, int *vec2, int size){
int i,k;
for(i=0;i<size;i++){
k = *(vec1+i); *(vec1+i) = *(vec2+i); *(vec2+i)= k;
}

}
