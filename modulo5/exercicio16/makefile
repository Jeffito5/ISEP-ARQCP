ex16module5: main.o aprovados.o group1.o 
	gcc -Wall main.o aprovados.o group1.o -o ex16module5
	
aprovados.o: aprovados.s
	gcc -Wall -g -c aprovados.s

group1.o: group1.c
	gcc -Wall -g -c group1.c

main.o: main.c aprovados.h group1.h 
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex16module5
	
run:
	./ex16module5
