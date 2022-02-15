ex11module1: palindrome.o main.o
	gcc palindrome.o main.o -o ex11module1
	
palindrome.o: palindrome.c
	gcc -g -Wall -c palindrome.c -o palindrome.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex11module1
	
run: ex11module1
	./ex11module1
