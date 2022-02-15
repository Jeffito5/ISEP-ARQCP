ex5module1: upper2.o main.o
	gcc upper2.o main.o -o ex5module1
	
upper2.o: upper2.c
	gcc -g -Wall -c upper2.c -o upper2.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex5module1
	
run: ex5module1
	./ex5module1
