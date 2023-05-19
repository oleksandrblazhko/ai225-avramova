GCC = gcc -Wall
INCLUDE = -I/usr/include
LIB = -L/usr/lib64 -lpq
OBJ = connect_person.o person.o remove_person.o add_person.o get_person.o
person: $(OBJ)
	$(GCC) $(OBJ) -o person $(INCLUDE) $(LIB)
person.o: person.c
	$(GCC) -c -o person.o person.c $(INCLUDE) $(LIB)
connect_person.o: connect_person.c
	$(GCC) -c -o connect_person.o connect_person.c $(INCLUDE) $(LIB)
remove_person.o: remove_person.c
	$(GCC) -c -o remove_person.o remove_person.c $(INCLUDE) $(LIB)
add_person.o: add_person.c
	$(GCC) -c -o add_person.o add_person.c $(INCLUDE) $(LIB)
get_person.o: get_person.c
	$(GCC) -c -o get_person.o get_person.c $(INCLUDE) $(LIB)
install:
	cp ./person /home/avramova/bin/
clean:
	rm -f *.o
	rm -f person
