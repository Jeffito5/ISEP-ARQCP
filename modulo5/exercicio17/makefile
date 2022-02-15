ex17module5: main.o return_unionB_b.o
	gcc -Wall main.o return_unionB_b.o -o ex17module5
	
return_unionB_b.o: return_unionB_b.s
	gcc -Wall -g -c return_unionB_b.s

main.o: main.c return_unionB_b.h 
	gcc -Wall -g -c main.c
	
clean:
	rm *.o -f ex17module5
	
run:
	./ex17module5
