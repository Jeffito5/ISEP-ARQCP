#include <stdlib.h>
#include <stdio.h>
#include <time.h>
void populate( int *vec , int num, int limit){
	int i;
	time_t t;
  /* Intializes random number generator */
   srand((unsigned) time(&t));

   
   for( i = 0 ; i < num ; i++ ) {
      *(vec+i)=rand() % limit+1;
   }

}
  
