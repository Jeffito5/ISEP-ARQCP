ex13module4: main.o activate_bits.o 
	gcc -Wall -g main.o activate_bits.o -o ex13module4

activate_bits.o: activate_bits.c
	gcc -Wall -g -c activate_bits.c
	
main.o: main.c activate_bits.h 
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex13module4

run: ex13module4
	./ex13module4
