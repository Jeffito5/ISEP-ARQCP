ex16: where_exists.o main.o
	gcc where_exists.o main.o -o ex16
	
where_exists.o: where_exists.c
	gcc -g -Wall -c where_exists.c -o where_exists.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex16
	
run: ex16
	./ex16
