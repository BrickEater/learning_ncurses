cmake_minimum_required(VERSION 3.10)

project(GoblinPrint)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

add_executable(goblin_print src/main.c)

target_link_libraries(goblin_print ncurses)

set_target_properties(goblin_print PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/build")
