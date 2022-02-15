ex19module3: main.o frequencies.o
	gcc -Wall -g main.o frequencies.o -o ex19module3

frequencies.o: frequencies.s
	gcc -Wall -g -c frequencies.s

main.o: main.c frequencies.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex19module3

run: ex19module3
	./ex19module3
