# CC = g++

# Compiler and Compiler Flags
CC = g++
CFLAGS = -std=c++20 -Wall $(INCLUDE)

# Source file and executable name
SRC = src/*
INCLUDE = -Iinclude/
EXECUTABLE = data_processor

# Directory for object files
OBJ_DIR = lib

# Object files
OBJ = $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC))

# Default target
all: $(EXECUTABLE)

# Rule to compile each source file into an object file and place it in the "lib" directory
$(OBJ_DIR)/%.o: %.cpp | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

# Rule to build the executable
$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ)

# Create the "lib" directory if it doesn't exist
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# Phony target to clean up the executable and "lib" directory
.PHONY: clean
clean:
	rm -f $(EXECUTABLE)
	rm -rf $(OBJ_DIR)

run:
	./$(EXECUTABLE)