#include "fill_student.h"
#include <stdio.h>
#include <string.h>

void fill_student(Student *s, char age, short number, char *name,char *address){

	 s->age = age; 
	 s->number = number; 
	 strcpy(s->name, name);
	 strcpy(s->address, address); 
}
