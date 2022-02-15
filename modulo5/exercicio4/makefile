ex4module5: main.o fill_student.o update_address.o
	gcc -Wall main.o fill_student.o update_address.o -o ex4module5
	
fill_student.o: fill_student.c
	gcc -Wall -g -c fill_student.c

update_address.o: update_address.s
	gcc -Wall -g -c update_address.s
	
main.o: main.c fill_student.h update_address.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex4module5
	
run:
	./ex4module5

