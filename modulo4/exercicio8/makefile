ex8module4: main.o calc.o
	gcc -Wall -g main.o calc.o -o ex8module4

calc.o: calc.s
	gcc -Wall -g -c calc.s

main.o: main.c calc.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex8module4

run: ex8module4
	./ex8module4
