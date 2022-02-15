ex7module5: main.o fill_s1.o
	gcc -Wall main.o fill_s1.o -o ex7module5
	
fill_s1.o: fill_s1.s
	gcc -Wall -g -c fill_s1.s
		
main.o: main.c fill_s1.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex7module5
	
run:
	./ex7module5

