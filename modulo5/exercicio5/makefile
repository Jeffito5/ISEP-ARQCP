ex5module5: main.o fill_student.o update_address.o update_grades.o
	gcc -Wall main.o fill_student.o update_address.o update_grades.o -o ex5module5
	
fill_student.o: fill_student.c
	gcc -Wall -g -c fill_student.c

update_address.o: update_address.s
	gcc -Wall -g -c update_address.s
	
update_grades.o: update_grades.s
	gcc -Wall -g -c update_grades.s
	
main.o: main.c fill_student.h update_address.h update_grades.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex5module5
	
run:
	./ex5module5

