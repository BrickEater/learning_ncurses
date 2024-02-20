cmake_minimum_required(VERSION 3.10)

project(GoblinAttributes)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

add_executable(goblin_attributes src/main.c)

target_link_libraries(goblin_attributes ncurses)

set_target_properties(goblin_attributes PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/build")
