void question_a(int x, float y, int* xPtr, int* vec){
	int i;
	
	printf("\nThe value of x is %i and the value of y is %i.", x, (int)y);
	printf("\nTHe adress of x is %p and the adress of y is %p.", (int*)&x, (float*)&y);
	printf("\nThe value pointed by xptr is %d.", *xPtr);
	printf("\nThe adress of vec is %p.", vec);
	
	for(i=0; i<4; i++){
		printf("\nThe value of vec[%i] is %i.", i, vec[i]);
	}
	 
	for(i=0; i<4; i++){
		printf("\nThe adress of vec[%i] is %p", i, (int*)&vec[i]);
	}
}
