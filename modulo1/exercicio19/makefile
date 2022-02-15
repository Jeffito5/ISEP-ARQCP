ex19module1: find_word.o main.o
	gcc find_word.o main.o -o ex19module1
	
find_word.o: find_word.c
	gcc -g -Wall -c find_word.c -o find_word.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex19module1
	
run: ex19module1
	./ex19module1
