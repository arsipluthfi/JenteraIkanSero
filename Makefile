CCG = g++
CCCLANG = clang++
CFLAGS = -std=gnu++2b -Wno-parentheses -Iincl/ -Ofast

SOURCES := $(wildcard src/*.cpp)
OBJECTS := $(patsubst src/%.cpp, bin/obj/%.o, $(SOURCES))

All: build

bin/obj/%.o: src/%.cpp
	$(CCG) $(CFLAGS) -c $< -o $@
	$(CCCLANG) $(CFLAGS) -c $< -o $@

build: $(OBJECTS)
	$(CCG) $(CFLAGS) $^ -o bin/ISG++
	$(CCCLANG) $(CFLAGS) $^ -o bin/ISCL++