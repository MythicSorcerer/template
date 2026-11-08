# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -O2 -Wall -Wextra -Wshadow -DLOCAL
DEBUGFLAGS = -std=c++17 -g -Wall -Wextra -Wshadow -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -DLOCAL
SUBMITFLAGS = -std=c++17 -O2 -Wall -Wextra -Wshadow

# File names
TARGET = main
SOURCE = main.cpp

# Default target: compile and run
.PHONY: run
run: $(TARGET)
	@echo "Running $(TARGET)..."
	@./$(TARGET)

# Compile optimized version
$(TARGET): $(SOURCE)
	@echo "Compiling $(SOURCE)..."
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCE)

# Compile and run with debug flags
.PHONY: debug
debug: $(SOURCE)
	@echo "Compiling with debug flags..."
	$(CXX) $(DEBUGFLAGS) -o $(TARGET)_debug $(SOURCE)
	@echo "Running $(TARGET)_debug..."
	@./$(TARGET)_debug

# Compile only (no run)
.PHONY: build
build: $(TARGET)

# Time the execution
.PHONY: time
time: $(TARGET)
	@echo "Timing execution..."
	@time ./$(TARGET)

# Compile for submission (no LOCAL flag, enables file I/O)
.PHONY: submit
submit: $(SOURCE)
	@echo "Compiling for submission (file I/O enabled)..."
	$(CXX) $(SUBMITFLAGS) -o $(TARGET)_submit $(SOURCE)
	@echo "Compiled as $(TARGET)_submit"

# Clean compiled files
.PHONY: clean
clean:
	@echo "Cleaning up..."
	@rm -f $(TARGET) $(TARGET)_debug $(TARGET)_submit *.out

# Help menu
.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make / make run  - Compile and run"
	@echo "  make build       - Compile only"
	@echo "  make debug       - Compile with debug flags and run"
	@echo "  make time        - Run and measure execution time"
	@echo "  make submit      - Compile for submission (file I/O enabled)"
	@echo "  make clean       - Remove compiled files"
	@echo "  make help        - Show this help message"
