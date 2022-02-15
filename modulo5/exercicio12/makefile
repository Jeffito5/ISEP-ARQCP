ex12module5: main.o find_matrix.o
	gcc -Wall main.o find_matrix.o -o ex12module5
	
find_matrix.o: find_matrix.c
	gcc -Wall -g -c find_matrix.c
		
main.o: main.c find_matrix.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex12module5
	
run:
	./ex12module5

