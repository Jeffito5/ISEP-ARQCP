#include <stdio.h>
#include <stdlib.h>
#include "pop.h"
#include "push.h"

int main(){
int i;
int size=1;
int *stack=(int *) calloc(1, sizeof(int));

int *ptr=stack;
printf("Size= %d\n", size);
for(i=0; i< size;i++){
    printf("Stack[%d]= %d    ", i, *ptr);
    ptr++;
}
printf("\n\n\n");

/** push **/
size = push(stack, 1, size);
printf("Size= %d\n", size);
ptr = stack;
for(i = 0; i < size; i++){
    printf("Stack[%d]= %d    ", i, *ptr);
    ptr++;
}
printf("\n\n\n");


size = push(stack, 2, size);
printf("Size= %d\n", size);
ptr = stack;
for(i = 0; i < size; i++){
    printf("Stack[%d]= %d    ", i, *ptr);
    ptr++;
}
printf("\n\n\n");

/** pop **/
size = pop(stack, size);
printf("Size= %d\n", size);
ptr = stack;
for(i = 0; i < size; i++){
    printf("Stack[%d]= %d    ", i, *ptr);
    ptr++;
}
printf("\n\n\n");

size = pop(stack, size);
printf("Size= %d\n", size);
ptr = stack;
for(i = 0; i < size; i++){
    printf("Stack[%d]= %d    ", i, *ptr);
    ptr++;
}
printf("\n\n\n");

    return 0;
}
