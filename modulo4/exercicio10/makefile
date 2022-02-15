ex10module4: main.o count_bits_zeroc.o count_bits_zeros.o vec_count_bits_zero.o
	gcc -Wall -g main.o count_bits_zeroc.o count_bits_zeros.o vec_count_bits_zero.o -o ex10module4

count_bits_zeroc.o: count_bits_zeroc.c 
	gcc -Wall -g -c count_bits_zeroc.c 
	
count_bits_zeros.o: count_bits_zeros.s	
	gcc -Wall -g -c count_bits_zeros.s
	 
vec_count_bits_zero.o: vec_count_bits_zero.s
	gcc -Wall -g -c vec_count_bits_zero.s

main.o: main.c count_bits_zeroc.h count_bits_zeros.h vec_count_bits_zero.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex10module4

run: ex10module4
	./ex10module4
