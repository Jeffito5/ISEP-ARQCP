ex1module4: main.o cube.o
	gcc -Wall -g main.o cube.o -o ex1module4

cube.o: cube.s
	gcc -Wall -g -c cube.s

main.o: main.c cube.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex1module4

run: ex1module4
	./ex1module4
