CC = gcc

CFLAGS = -c -Wall
OBJECTS = main.o

all : prog

prog: $(OBJECTS)
	$(CC) $(OBJECTS) -o prog

%.o: %.c
	$(CC) $(CFLAGS) $<

clean:
	rm -rf *.o