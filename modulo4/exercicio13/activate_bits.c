int activate_bits(int a, int left, int right){
	/*int right_and_left;*/
	a=!(left<<(a-left)) + !(right>>(a-right));
	/*right_and_left=!((a-left)<<(a-left)) + !((a-right)>>(a-right));*/
	/*right_and_left=;*/
	return a;
}
