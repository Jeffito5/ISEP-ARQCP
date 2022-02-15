ex6module5: main.o fill_student.o update_address.o update_grades.o locate_greater.o
	gcc -Wall main.o fill_student.o update_address.o update_grades.o locate_greater.o -o ex6module5
	
fill_student.o: fill_student.c
	gcc -Wall -g -c fill_student.c

update_address.o: update_address.s
	gcc -Wall -g -c update_address.s
	
update_grades.o: update_grades.s
	gcc -Wall -g -c update_grades.s
	
locate_greater.o: locate_greater.s
	gcc -Wall -g -c locate_greater.s
	
main.o: main.c fill_student.h update_address.h update_grades.h locate_greater.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex6module5
	
run:
	./ex6module5

