ex12: capitalize.o main.o
	gcc capitalize.o main.o -o ex12
	
capitalize.o: capitalize.c
	gcc -g -Wall -c capitalize.c -o capitalize.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex12
	
run: ex12
	./ex12
