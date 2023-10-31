WIDTH ?= 9
HEIGHT ?= 9

MANSUBA_FLAGS = -DWIDTH=$(WIDTH) -DHEIGHT=$(HEIGHT)
CFLAGS = -Wall -Wextra -std=c99 -g3 -I src $(MANSUBA_FLAGS)  
SRCS = world.c neighbors.c geometry.c positions.c victory.c game_randoms.c movements.c init_game.c prison.c
OBJS = $(SRCS:.c=.o)

all: project

%.o : src/%.c
	gcc -c $(CFLAGS) $<

%.o : tst/%.c
	gcc -c $(CFLAGS) $<


project: $(OBJS) project.o
	gcc $(CFLAGS) $^ -o project -lm
	

test: $(OBJS) test.o
	gcc  $(CFLAGS) $^ -o test 
	./test
	make clean


clean:
	rm -f *.o *~
	rm -f project test



