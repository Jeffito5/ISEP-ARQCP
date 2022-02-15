ex4module4: main.o sum_smaller.o
	gcc -Wall -g main.o sum_smaller.o -o ex4module4

sum_smaller.o: sum_smaller.s
	gcc -Wall -g -c sum_smaller.s

main.o: main.c sum_smaller.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex4module4

run: ex4module4
	./ex4module4
