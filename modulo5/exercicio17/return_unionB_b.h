#ifndef RETURN_UNIONB_B_H
#define RETURN_UNIONB_B_H
typedef union {
    int a;
    char b;
    short c;
    long int d;
    }unionB;

typedef struct {
    short int a[3];
    char b;
    long long int c;
    int d;
    unionB ub;
    char e;
    }structA;

char return_unionB_b(structA **matrix, int i, int j);
#endif
