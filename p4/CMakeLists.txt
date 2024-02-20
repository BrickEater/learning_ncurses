cmake_minimum_required(VERSION 3.10) # Specify the minimum version of CMake required

project(HelloGoblin) # Define the project name

# Specify the C standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

# Add the executable
add_executable(hello_goblin src/main.c)

# Add the libraries
target_link_libraries(hello_goblin ncurses)

# Specify the directory for the executable output
set_target_properties(hello_goblin PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/build")
