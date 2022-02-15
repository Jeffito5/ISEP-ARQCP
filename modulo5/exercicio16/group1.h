#ifndef GROUP1_H
#define GROUP1_H
typedef struct {
    int n_students;
    unsigned char * individual_grades;
    } group;

void group1(group *g , int estudantes, unsigned char *notas);
#endif
