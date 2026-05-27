CC := gcc
CXX := g++
SRC := wish.c
CPPSRC := wish.cpp

CFLAGS := -Wall -Werror -O2
DEBUG_FLAG := -DDEBUG
DEBUG_CFLAGS := -Wall -g -O0 $(DEBUG_FLAG)
CXXFLAGS := -Wall -Werror -O2 -std=c++23
DEBUG_CXXFLAGS := -Wall -g -O0 $(DEBUG_FLAG)

.PHONY: all wish wishpp debug debugpp clean

all: wish

wish: $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o wish

wishpp: $(CPPSRC)
	$(CXX) $(CXXFLAGS) $(CPPSRC) -o wish

debug: $(SRC)
	$(CC) $(DEBUG_CFLAGS) $(SRC) -o wish

debugpp: $(CPPSRC)
	$(CXX) $(DEBUG_CXXFLAGS) $(CPPSRC) -o wish

clean:
	rm -f wish
