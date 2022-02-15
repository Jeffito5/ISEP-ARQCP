ex3module5: main.o fill_student.o
	gcc -Wall main.o fill_student.o -o ex3module5
	
fill_student.o: fill_student.c
	gcc -Wall -g -c fill_student.c
	
main.o: main.c fill_student.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex3module5
	
run:
	./ex3module5

