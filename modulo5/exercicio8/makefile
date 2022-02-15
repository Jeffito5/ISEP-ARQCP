ex8module5: main.o fill_s2.o
	gcc -Wall main.o fill_s2.o -o ex8module5
	
fill_s2.o: fill_s2.s
	gcc -Wall -g -c fill_s2.s
		
main.o: main.c fill_s2.h
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex8module5
	
run:
	./ex8module5

