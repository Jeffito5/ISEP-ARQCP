ex13module2: main.o asm.o
	gcc -Wall -g main.o asm.o -o main

asm.o: asm.s
	gcc -Wall -g -c asm.s

main.o: main.c asm.h
	gcc -Wall -g -c main.c

clean:
	rm *.o main

run: main
	./main
