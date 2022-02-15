#include <stdlib.h>
#include <stdio.h>
int pop(int * stack, int size){
    printf("Pop do último valor -->\n");
    stack = (int *) realloc(stack, (size - 1) * sizeof(int)); 
    size--; 
    return size;
}
