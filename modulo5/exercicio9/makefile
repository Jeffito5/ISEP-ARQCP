ex9module5: main.o fun.o
	gcc -Wall main.o fun.o -o ex9module5
	
fun.o: fun.s
	gcc -Wall -g -c fun.s
		
main.o: main.c fun.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex9module5
	
run:
	./ex9module5

