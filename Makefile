CC = arm-linux-gnueabihf-gcc
CFLAGS = -O3 -static -Wa,-mimplicit-it=thumb

.PHONY: all clean

all:  libpthread.a

libpthread.a:	pthread.c
	${CC} ${CFLAGS} -c -o pthread.o pthread.c
	arm-linux-gnueabihf-ar rv libpthread.a pthread.o


clean:
	$(RM) *.o libpthread.a
