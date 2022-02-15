#include <stdio.h>
#include "fill_s2.h"

int main(){
	s2 struct2;
	s2 *s=&struct2;
	short vw[3]={2,7,9};
	int vj=5;
	char vc[3]={2,7,9};
	fill_s2(s,vw,vj,vc);
	int i;
    printf("Short w: ");
    for(i=0;i<3;i++){
        printf(" %d ", s->w[i]);
    }
    printf("\nInt j: %d\n", s->j);
    printf("Char c: ");
    for(i=0;i<3;i++){
        printf(" %d ", s->c[i]);
    }
	return 0;
}
