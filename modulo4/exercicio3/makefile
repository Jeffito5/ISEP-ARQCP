ex3module4: main.o greatest.o
	gcc -Wall -g main.o greatest.o -o ex3module4

greatest.o: greatest.s
	gcc -Wall -g -c greatest.s

main.o: main.c greatest.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex3module4

run: ex3module4
	./ex3module4
