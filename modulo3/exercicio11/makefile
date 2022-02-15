ex11module3: main.o vec_greater20.o
	gcc -Wall -g main.o vec_greater20.o -o ex11module3

vec_greater20.o: vec_greater20.s
	gcc -Wall -g -c vec_greater20.s

main.o: main.c vec_greater20.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex11module3

run: ex11module3
	./ex11module3
