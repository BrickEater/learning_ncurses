#include <ncurses.h>
#include <stdio.h>

#define MAX_LINE_LENGTH 256

WINDOW *create_newwin(int height, int width, int starty, int startx,
                      int border);

int main() {

  WINDOW *main_wrapper_window;
  WINDOW *main_window;
  FILE *fp;

  initscr();
  cbreak();
  keypad(stdscr, TRUE);

  int ch;
  char string_buffer[MAX_LINE_LENGTH];

  fp = fopen("/home/goblin/Repos/100_projects_C/p24/files/example.txt", "r");
  if (fp == NULL) {
    perror("Error opening file");
    return -1;
  }

  printw("Press F1 to close");
  refresh();

  main_wrapper_window = create_newwin(LINES - 8, COLS - 8, 4, 4, 1);
  main_window = create_newwin(LINES - 9, COLS - 9, 5, 5, 0);

  while (fgets(string_buffer, MAX_LINE_LENGTH, fp) != NULL) {
    wprintw(main_window, "%s", string_buffer);
    wrefresh(main_window);
  }

  while ((ch = getch()) != KEY_F(1)) {
  }
  endwin();
  fclose(fp);
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
