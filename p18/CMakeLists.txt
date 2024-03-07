cmake_minimum_required(VERSION 3.10)

project(GoblinWindowBrowsing)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

add_executable(goblin_window_browsing src/main.c)

target_link_libraries(goblin_window_browsing ncurses panel)

set_target_properties(goblin_window_browsing PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/build")
