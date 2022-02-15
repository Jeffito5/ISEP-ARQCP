ex15module3: main.o sum_first_byte.o
	gcc -Wall -g main.o sum_first_byte.o -o ex15module3

sum_first_byte.o: sum_first_byte.s
	gcc -Wall -g -c sum_first_byte.s

main.o: main.c sum_first_byte.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex15module3

run: ex15module3
	./ex15module3
