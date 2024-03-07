cmake_minimum_required(VERSION 3.10)
project(GoblinMenu)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)
include_directory(include)
add_executable(goblin_menu src/main.c src/window.c)
target_link_libraries(goblin_menu ncurses)
set_target_properties(goblin_menu PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/build")

