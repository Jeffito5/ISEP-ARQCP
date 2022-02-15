ex13module1: where_is.o main.o
	gcc where_is.o main.o -o ex13module1
	
where_is.o: where_is.c
	gcc -g -Wall -c where_is.c -o where_is.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex13module1
	
run: ex13module1
	./ex13module1
