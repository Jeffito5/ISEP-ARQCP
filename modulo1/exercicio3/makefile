ex3module1: sum_even.o main.o
	gcc sum_even.o main.o -o ex3module1

sum_even.o: sum_even.c
	gcc -g -Wall -c sum_even.c -o sum_even.o

main.o: main.c	
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex3module1
	
run: ex3module1
	./ex3module1
