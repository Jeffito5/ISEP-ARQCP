ex9module3: main.o vec_search.o
	gcc -Wall -g main.o vec_search.o -o ex9module3

vec_search.o: vec_search.s
	gcc -Wall -g -c vec_search.s

main.o: main.c vec_search.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex9module3

run: ex9module3
	./ex9module3
