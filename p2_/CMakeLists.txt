cmake_minimum_required(VERSION 3.10)

project(RogueGame C)

include_directories(include)

file(GLOB SOURCES "src/*.c")

add_executable(rogue ${SOURCES})

# Updated to link against ncurses and the math library
target_link_libraries(rogue ncurses m)

# Ensure the CMAKE_EXPORT_COMPILE_COMMANDS option is set to generate the file
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")

# Add a custom command to create a symlink for compile_commands.json
# This command runs after the 'rogue' target has been built
add_custom_command(TARGET rogue POST_BUILD
                   COMMAND ${CMAKE_COMMAND} -E create_symlink
                   ${CMAKE_BINARY_DIR}/compile_commands.json
                   ${CMAKE_SOURCE_DIR}/compile_commands.json
                   COMMENT "Symlinking compile_commands.json to project root")
