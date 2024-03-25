# Makefile

# Define compiler and compiler flags
CC = gcc
CFLAGS = -Wall -Wextra

# Define source files and object files
SRCS = main.c foo.c bar.c
OBJS = $(SRCS:.c=.o)

# Define target executable
TARGET = variables1

# Default target
all: $(variables1)

# Compile the program
$(TARGET): $(OBJS)
    $(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

# Compile each source file into object files
%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
    rm -f $(OBJS) $(TARGET)

