ex4module3: main.o vec_add_one.o
	gcc -Wall -g main.o vec_add_one.o -o ex4module3

vec_add_one.o: vec_add_one.s
	gcc -Wall -g -c vec_add_one.s

main.o: main.c vec_add_one.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex4module3

run: ex4module3
	./ex4module3
