#include <ncurses.h>

WINDOW *create_newwin(int height, int width, int starty, int startx);

int main() {
  WINDOW *goblin_window;
  int startx, starty, height, width;
  int ch;

  initscr();
  noecho();
  curs_set(0);
  cbreak();
  keypad(stdscr, TRUE);

  height = LINES - 3;
  width = COLS - 3;

  starty = (LINES - height) /
           2; // fool around with both startx and starty to see how they work
  startx = (COLS - width) / 2;
  printw("Press F1 to close");
  refresh(); // remove this to see what happens
  goblin_window = create_newwin(height, width, starty, startx);

  while ((ch = getch()) != KEY_F(1)) {
  }
  endwin();
  return 0;
}

WINDOW *create_newwin(int height, int width, int starty, int startx) {
  WINDOW *local_win;
  local_win = newwin(height, width, starty, startx);
  box(local_win, 0, 0);
  wrefresh(local_win);
  return local_win;
}
