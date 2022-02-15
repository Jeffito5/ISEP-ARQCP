ex15module1: populate.o check.o inc_nsets.o main.o
	gcc populate.o check.o inc_nsets.o main.o -o ex15module1
	
populate.o: populate.c
	gcc -g -Wall -c populate.c -o populate.o
	
check.o: check.c
	gcc -g -Wall -c check.c -o check.o
	
inc_nsets.o: inc_nsets.c
	gcc -g -Wall -c inc_nsets.c -o inc_nsets.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex15module1
	
run: ex15module1
	./ex15module1
