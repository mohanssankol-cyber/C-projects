CC = gcc
CFLAGS = -Wall

all: ABC.exe

# ✅ Add rev.o to the list of object files
ABC.exe: main.o big3.o fact.o pal.o
	$(CC) $(CFLAGS) main.o big3.o fact.o pal.o -o ABC.exe

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

big3.o: big3.c
	$(CC) $(CFLAGS) -c big3.c

fact.o: fact.c
	$(CC) $(CFLAGS) -c fact.c

# ✅ Add a rule for rev.c
pal.o: pal.c
	$(CC) $(CFLAGS) -c pal.c

clean:
	rm -f *.o ABC.exe
