#include <stdlib.h>
#include <stdio.h>
int push(int * stack, int x, int size){
    printf("Push de %d --> \n", x);
    int * copy = stack; 
    copy = (int *) realloc(stack, (size + 1) * sizeof(int));
    if(copy != NULL){
        stack = copy; 
        copy += size;
        size++; 
        (*copy) = x;
    }
    return size;
}
