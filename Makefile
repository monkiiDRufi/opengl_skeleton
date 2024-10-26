SRC_FILES := $(wildcard src/*.cpp src/glad.c)
LIB_FOLDER := lib
INCLUDE_FOLDER := include

LDFLAGS=-lglfw3dll
PROGRAM_NAME=main.exe

all: $(INCLUDE_FOLDER) $(LIB_FOLDER) $(SRC_FILES)
	g++ -I$(INCLUDE_FOLDER) -L$(LIB_FOLDER) $(SRC_FILES) $(LDFLAGS) -o $(PROGRAM_NAME)
clean:
	rm $(PROGRAM_NAME)
