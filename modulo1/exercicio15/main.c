#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"
int main(){
int num=100;
int limit=20;
int vec[num];
int x,y,z,i,k;
populate(vec,num,limit);
for(i=0;i<num;i++){
printf("%i",*(vec+i));
}
for(i=0;i<num;i++){
	x=*(vec+i);
	y=*(vec+i+1);
	z=*(vec+i+2);
	k=check(x,y,z);
	if(k==1){
	inc_nsets();
}
}
return 0;
}



