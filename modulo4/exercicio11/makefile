ex11module4: main.o rotate_left.o rotate_right.o
	gcc -Wall -g main.o rotate_left.o rotate_right.o -o ex11module4

rotate_left.o: rotate_left.c
	gcc -Wall -g -c rotate_left.c
	
rotate_right.o: rotate_right.c
	gcc -Wall -g -c rotate_right.c

main.o: main.c rotate_left.h rotate_right.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex11module4

run: ex11module4
	./ex11module4
