ex10: odd_sum.o main.o
	gcc odd_sum.o main.o -o ex10
	
odd_sum.o: odd_sum.c
	gcc -g -Wall -c odd_sum.c -o odd_sum.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex10
	
run: ex10
	./ex10
