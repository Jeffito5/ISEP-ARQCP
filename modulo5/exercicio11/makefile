ex11module5: main.o new_matrix.o
	gcc -Wall main.o new_matrix.o -o ex11module5
	
new_matrix.o: new_matrix.c
	gcc -Wall -g -c new_matrix.c
		
main.o: main.c new_matrix.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex11module5
	
run:
	./ex11module5

