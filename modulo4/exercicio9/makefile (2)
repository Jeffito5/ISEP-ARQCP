ex9module4: main.o calculate.o
	gcc -Wall -g main.o calculate.o -o ex9module4

calculate.o: calculate.s
	gcc -Wall -g -c calculate.s

main.o: main.c calculate.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex9module4

run: ex9module4
	./ex9module4
