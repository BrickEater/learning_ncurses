#include <ncurses.h>

int main() {
  int ch;

  initscr();            // start curses mode
  raw();                // line buffering disabled
  keypad(stdscr, TRUE); // access to the keyboard function keys and arrow keys
  noecho();             // dont echo while we do getch

  printw("Type any character to see it in bold\n");

  ch = getch(); // if raw handlt been called we have to press enter before it
                // gets to the program

  if (ch == KEY_F(1)) // without keypad enabled this will not get to us either
    printw("F1 Key pressed"); // without noecho some ugly escape characters
                              // might have been printed on screen

  else {
    printw("The pressed key is ");
    attron(A_BOLD);
    printw("%c", ch);
    attroff(A_BOLD);
  }

  refresh(); // print to the screen
  getch();   // wait for user input
  endwin();  // end curses mode (release memory)

  return 0;
}
