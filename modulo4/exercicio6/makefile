ex6module4: main.o test_equal.o
	gcc -Wall -g main.o test_equal.o -o ex6module4

test_equal.o: test_equal.s
	gcc -Wall -g -c test_equal.s

main.o: main.c test_equal.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex6module4

run: ex6module4
	./ex6module4
