ex17module1: swap.o main.o
	gcc swap.o main.o -o ex17module1
	
swap.o: swap.c
	gcc -g -Wall -c swap.c -o swap.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex17module1
	
run: ex17module1
	./ex17module1
