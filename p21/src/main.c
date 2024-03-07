#include <ncurses.h>

#define MAX_INPUT 256 

WINDOW *create_newwin(int height, int width, int starty, int startx);

int main() {
  WINDOW *goblin_window;
  int startx, starty, height, width;
  int ch, i = 0;
  char string_buffer[MAX_INPUT] = {0};

  initscr();
  cbreak();
  keypad(stdscr, TRUE);

  height = LINES - 3;
  width = COLS - 3;
  starty = (LINES - height) / 2;
  startx = (COLS - width) / 2;
  printw("Press F1 to close");
  refresh();
  goblin_window = create_newwin(height, width, starty, startx);
  keypad(goblin_window, TRUE); // This line should be after window creation.
  mvwprintw(goblin_window, 20, 20, "Enter text here: ");
  wrefresh(goblin_window);

  do {
    ch = wgetch(goblin_window);
    if (ch != KEY_F(1) && ch != '\n' && i < MAX_INPUT - 1) {
      string_buffer[i++] = ch;
      string_buffer[i] = '\0';
    } else if (ch == '\n') {
      wclear(goblin_window);
      box(goblin_window, 0, 0);
      wrefresh(goblin_window);
      mvwprintw(goblin_window, 25, 20, "%s", string_buffer);
      mvwprintw(goblin_window, 20, 20, "Enter text here: ");
      i = 0;
      string_buffer[i] = '\0';
    }
  }
  while (ch != KEY_F(1));

  endwin();
  return 0;
}

WINDOW *create_newwin(int height, int width, int starty, int startx) {
  WINDOW *local_win;
  local_win = newwin(height, width, starty, startx);
  box(local_win, 0 , 0); // Draw a box around the window
  wrefresh(local_win);
  return local_win;
}
