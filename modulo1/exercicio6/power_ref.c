void power_ref(int* x, int y){
	int i;
	int base = *x;
	for(i = 1; i<y; i++){
		*x *= base;
	}
	return;
}
