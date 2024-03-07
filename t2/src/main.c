#include <ncurses.h>

WINDOW *create_newwin(int height, int width, int starty, int startx);

int main() {
  WINDOW *goblin_window;
  int starty, startx, height, width;
  int ch;

  initscr();
  noecho();
  curs_set(0);
  cbreak();
  keypad(stdscr, TRUE);

  height = LINES - 6;
  width = COLS - 6;

  starty = (LINES - height) / 2;
  startx = (COLS - width) / 2;

  printw("Press F1 to quit\n");
  printw("You can see how printw works here");
  refresh();
  goblin_window = create_newwin(height, width, starty, startx);
  wprintw(goblin_window, "this is wprintw, you puts the cursor at 0, 0 which "
                         "happens to also be where the border of this box is.");
  mvwprintw(goblin_window, 10, 10,
            "mvwprintw moves the cursor then prints the text. This is y = "
            "10, x = 10");
  wrefresh(goblin_window);

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
