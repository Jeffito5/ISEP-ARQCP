#include <stdio.h>
#include "question_a.h"

int main () {
	int x = 5;
	int* xPtr = &x;
	float y = *xPtr +3;
	int vec[] = {10, 11, 12, 13};
	
	question_a(x, y, xPtr, vec);
	
	return 0; 
}
/*
 * b) Considering the fact that vec is an array of ints we can conclude that each aray index holds 4 bytes in memory,
 *  and as such, to acess each consecutive value we have to add 4 bytes each time to the memory adress.
 * c) Although possible, it's very unlikely as they would probably be stored in other adresses that were being unused;
 *  it's also worth mentioning that there are different architectures where some even use 64bit and unless that computer used IA32 or another 32 bit system 
  *  those memory adresses would never be the same.
*/
