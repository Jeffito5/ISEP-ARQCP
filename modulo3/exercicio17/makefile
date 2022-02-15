ex17module3: main.o array_sort.o
	gcc -Wall -g main.o array_sort.o -o ex17module3

array_sort.o: array_sort.s
	gcc -Wall -g -c array_sort.s

main.o: main.c array_sort.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex17module3

run: ex17module3
	./ex17module3
