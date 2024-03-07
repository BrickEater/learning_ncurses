#include <ncurses.h>
#include <stdlib.h>

int main() {
  initscr();
  printw("Hello World!!!\n");
  refresh();
  def_prog_mode();
  endwin();
  system("/bin/sh");
  reset_prog_mode();

  refresh();

  printw("Another String\n");
  refresh();
  endwin();

  return 0;
}
