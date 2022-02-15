ex15module5: main.o push.o pop.o 
	gcc -Wall main.o push.o pop.o -o ex15module5
	
push.o: push.c
	gcc -Wall -g -c push.c

pop.o: pop.c
	gcc -Wall -g -c pop.c

main.o: main.c push.h pop.h 
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex15module5
	
run:
	./ex15module5
