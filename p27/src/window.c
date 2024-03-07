#include <window.h>

void initWidnow(void) {
  initscr();
  printw("Hello, Goblin");
  refresh();
  getch();
  endwin();
}
