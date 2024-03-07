#include <ncurses.h>
#include <stdio.h>

#define DISPLAY_HEIGHT LINES / 3
#define DISPLAY_WIDTH 100
#define STARTY LINES / 6
#define STARTX (COLS - DISPLAY_WIDTH) / 2
#define MAX_LINE_LENGTH 256

WINDOW *create_newwin(int height, int width, int starty, int starx, int border);

int main() {

  WINDOW *display_wrapper_window;
  WINDOW *display_window;
  WINDOW *input_wrapper_window;
  WINDOW *input_window;
  FILE *todo_list;

  int ch;
  char string_buffer[MAX_LINE_LENGTH];

  initscr();
  cbreak();
  keypad(stdscr, TRUE);

  todo_list =
      fopen("/home/goblin/Repos/100_projects_C/p25/files/todo.txt", "r");
  if (todo_list == NULL) {
    perror("Failed to read file");
    return -1;
  }

  printw("Press F1 to close");
  refresh();

  display_wrapper_window =
      create_newwin(DISPLAY_HEIGHT, DISPLAY_WIDTH, STARTY, STARTX, 1);

  display_window = create_newwin(DISPLAY_HEIGHT - 2, DISPLAY_WIDTH - 2,
                                 STARTY + 1, STARTX + 1, 0);

  keypad(display_window, TRUE);

  while (fgets(string_buffer, MAX_LINE_LENGTH, todo_list) != NULL) {
    wprintw(display_window, "%s", string_buffer);
    wrefresh(display_window);
  }

  do {
    ch = wgetch(display_window);
  } while (ch != KEY_F(1));

  endwin();
  return 0;
}

WINDOW *create_newwin(int height, int width, int starty, int startx,
                      int border) {
  WINDOW *local_win;
  local_win = newwin(height, width, starty, startx);
  if (border == 1) {
    box(local_win, 0, 0);
  }
  wrefresh(local_win);
  return local_win;
}
