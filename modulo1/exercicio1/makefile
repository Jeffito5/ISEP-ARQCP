ex1module1: question_a.o main.o
	gcc question_a.o main.o -o ex1module1

main.o: main.c	
	gcc -g -Wall -c main.c -o main.o

question_a.o: question_a.c
	gcc -g -Wall -c question_a.c -o question_a.o

clean:
	rm -f *.o ex1module1
	
run: ex1module1
	./ex1module1
