#include "group1.h"
#include <stdio.h>
#include <string.h>

void group1(group *g, int estudantes, unsigned char *notas){
    g->n_students = estudantes;
    g->individual_grades = notas;
}
