ex14module5: main.o add_matrixes.o fill_matrix.o new_matrix.o
	gcc -Wall main.o add_matrixes.o fill_matrix.o new_matrix.o -o ex14module5
	
add_matrixes.o: add_matrixes.c
	gcc -Wall -g -c add_matrixes.c

fill_matrix.o: fill_matrix.c
	gcc -Wall -g -c fill_matrix.c

new_matrix.o: new_matrix.c
	gcc -Wall -g -c new_matrix.c
		
main.o: main.c add_matrixes.h fill_matrix.h new_matrix.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex14module5
	
run:
	./ex14module5
