ex13module5: main.o count_odd_matrix.o fill_matrix.o new_matrix.o
	gcc -Wall main.o count_odd_matrix.o fill_matrix.o new_matrix.o -o ex13module5
	
count_odd_matrix.o: count_odd_matrix.s
	gcc -Wall -g -c count_odd_matrix.s

fill_matrix.o: fill_matrix.c
	gcc -Wall -g -c fill_matrix.c

new_matrix.o: new_matrix.c
	gcc -Wall -g -c new_matrix.c
		
main.o: main.c count_odd_matrix.h fill_matrix.h new_matrix.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex13module5
	
run:
	./ex13module5

