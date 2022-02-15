ex14: frequencies.o main.o
	gcc frequencies.o main.o -o ex14
	
frequencies.o: frequencies.c
	gcc -g -Wall -c frequencies.c -o frequencies.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex14
	
run: ex14
	./ex14
