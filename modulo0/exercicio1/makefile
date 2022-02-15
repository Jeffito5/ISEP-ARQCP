ex1module0: main.o
	gcc main.o -o ex1module0
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex1module0
	
run: ex1module0
	./ex1module0
