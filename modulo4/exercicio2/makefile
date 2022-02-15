ex2module4: main.o sum_n.o
	gcc -Wall -g main.o sum_n.o -o ex2module4

sum_n.o: sum_n.s
	gcc -Wall -g -c sum_n.s

main.o: main.c sum_n.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex2module4

run: ex2module4
	./ex2module4
