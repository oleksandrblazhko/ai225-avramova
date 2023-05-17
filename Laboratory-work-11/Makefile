GCC = gcc -Wall
INCLUDE = -I/usr/include
LIB = -L/usr/lib64 -lpq
OBJ = connect_person.o person.o
person: $(OBJ)
	$(GCC) $(OBJ) -o person $(INCLUDE) $(LIB)
person.o: person.c
	$(GCC) -c -o person.o person.c $(INCLUDE) $(LIB)
connect_person.o: connect_person.c
	$(GCC) -c -o connect_person.o connect_person.c $(INCLUDE) $(LIB)
install:
	cp ./person /home/avramova/bin/
clean:
	rm -f *.o
	rm -f person
