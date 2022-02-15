exames: parte2a.o parte2b.o
	gcc parte2a.o parte2b.o -o exames
	
parte2a.o: parte2a.c
	gcc -g -Wall -c parte2a.c -o parte2a.o

parte2b.o: parte2b.c
	gcc -g -Wall -c parte2b.c -o parte2b.o
	
clean:
	rm -f *.o exames
	
run: exames
	./exames
