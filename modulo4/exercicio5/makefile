ex5module4: main.o inc_and_square.o
	gcc -Wall -g main.o inc_and_square.o -o ex5module4

inc_and_square.o: inc_and_square.s
	gcc -Wall -g -c inc_and_square.s

main.o: main.c inc_and_square.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex5module4

run: ex5module4
	./ex5module4
