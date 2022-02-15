ex7module3: main.o decrypt_encrypt.o
	gcc -Wall -g main.o decrypt_encrypt.o -o ex7module3

decrypt_encrypt.o: decrypt_encrypt.s
	gcc -Wall -g -c decrypt_encrypt.s

main.o: main.c decrypt_encrypt.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o ex7module3

run: ex7module3
	./ex7module3
