#include <stdio.h>
#include "fill_student.h"
#include <string.h>
#include "update_address.h"

int main(){

    Student vec[5];
    Student *s=vec;
    char nome[80]="Luís";
    char *name=nome;
    char endereco[120]="Endereço 1";
    char *address = endereco;
    fill_student(s,18,100,name,address);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    
    s++;
    strcpy(name, "Pedro");
    strcpy(address,"Endereço 2");
    fill_student(s,19,101,name,address);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    
    s++;
    strcpy(name, "Miguel");
    strcpy(address,"Endereço 3");
    fill_student(s, 19, 102, name, address);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    
    s++;
    strcpy(name, "Joana");
    strcpy(address,"Endereço 4");
    fill_student(s, 19, 103, name, address);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    
    s++;
    strcpy(name, "Maria");
    strcpy(address,"Endereço 5");
    fill_student(s, 19, 104, name, address);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    
    char novo_endereco[120]="Endereço 6";
    char *new_address=novo_endereco;
    update_address(s,new_address);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    return 0;
}
