#include <ncurses.h>
#include <string.h>

int main() {
  char mesg[] = "Enter a string: "; // message to be appeared on the screen
  char str[80];
  int row, col; // to store the number of rows and columns of the screen

  initscr();                  // start the curses mode
  getmaxyx(stdscr, row, col); // get the number of rows and columns
  getstr(str);
  mvprintw(LINES - 2, 0, "You Entered: %s", str);
  getch();
  endwin();

  return 0;
}
