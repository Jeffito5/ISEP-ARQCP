ex7module1: array_sort1.o main.o
	gcc array_sort1.o main.o -o ex7module1
	
array_sort1.o: array_sort1.c
	gcc -g -Wall -c array_sort1.c -o array_sort1.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex7module1
	
run: ex7module1
	./ex7module1
