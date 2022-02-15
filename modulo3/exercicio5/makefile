ex5module3: main.o vec_avg.o
	gcc -Wall -g main.o vec_avg.o -o ex5module3

vec_avg.o: vec_avg.s
	gcc -Wall -g -c vec_avg.s

main.o: main.c vec_avg.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex5module3

run: ex5module3
	./ex5module3
