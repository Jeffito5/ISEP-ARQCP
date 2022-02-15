ex10module5: main.o new_str.o
	gcc -Wall main.o new_str.o -o ex10module5
	
new_str.o: new_str.c
	gcc -Wall -g -c new_str.c
		
main.o: main.c new_str.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex10module5
	
run:
	./ex10module5

