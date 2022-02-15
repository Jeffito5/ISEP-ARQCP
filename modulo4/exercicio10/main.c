#include <stdio.h>
#include "count_bits_zeroc.h"
#include "count_bits_zeros.h"
#include "vec_count_bits_zero.h"

int main(){
	int x=10,num=5;
	int inactive_c,inactive_s,inactive_vec;
	
	inactive_c=count_bits_zeroc(x);
	printf("\nNumber of inactive bits in x: %d\n", inactive_c);
	
	inactive_s=count_bits_zeros(x);
	printf("\nNumber of inactive bits in x: %d\n", inactive_s);
	
	int vec[5]={3,6,9,134,150}; //30+30+30+29+28=147
	int *ptr;
	ptr=vec;
	inactive_vec=vec_count_bits_zero(ptr,num);
	printf("\nNumber of inactive bits in x: %d\n", inactive_vec);

	return 0;
}
