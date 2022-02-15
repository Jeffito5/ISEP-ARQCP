ex2: asm.o main.o
	gcc asm.o main.o -o ex2
	
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex2
	
run: ex2
	./ex2
