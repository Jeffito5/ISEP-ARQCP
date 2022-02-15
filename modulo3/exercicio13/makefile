ex13module3: main.o keep_positives.o
	gcc -Wall -g main.o keep_positives.o -o ex13module3

keep_positives.o: keep_positives.s
	gcc -Wall -g -c keep_positives.s

main.o: main.c keep_positives.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex13module3

run: ex13module3
	./ex13module3
