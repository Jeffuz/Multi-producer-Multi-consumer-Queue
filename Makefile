CFLAGS  = -g -Wall -Wextra -Werror -pedantic  
CC      = clang $(CFLAGS)
TARGET  = queue

all:$(TARGET).o

queue.o: queue.c
	$(CC) -c $(TARGET).c

format:
	clang-format -i $(TARGET).c $(TARGET).h

clean:
	rm -f $(target) $(TARGET).o 
