ex7module4: main.o count_even.o
	gcc -Wall -g main.o count_even.o -o ex7module4

count_even.o: count_even.s
	gcc -Wall -g -c count_even.s

main.o: main.c count_even.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex7module4

run: ex7module4
	./ex7module4
