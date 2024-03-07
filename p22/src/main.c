#include <ncurses.h>
#define MAX_INPUT 256

WINDOW *create_newwin(int height, int width, int starty, int startx);

int main() {
  WINDOW *display_window;
  WINDOW *input_window;
  int startx, starty, height, width;
  int ch, i = 0;
  char string_buffer[MAX_INPUT] = {0};

  initscr();
  cbreak();
  keypad(stdscr, TRUE);

  height = (LINES / 2) - 4;
  width = COLS - 4;

  starty = 4;
  startx = 2;
  printw("Press F1 to close");
  refresh(); // remove this to see what happens
  display_window = create_newwin(height, width, starty, startx);
  input_window = create_newwin(height, width, starty + height + 1, startx);
  keypad(input_window, TRUE);
  mvwprintw(input_window, 10, 10, "Type here: ");
  mvwprintw(display_window, 10, 10, "The text should be here: ");
  wrefresh(input_window);
  wrefresh(display_window);

  do {
    ch = wgetch(input_window);
    if (ch != KEY_F(1) && ch != '\n' && i < MAX_INPUT - 1) {
      string_buffer[i++] = ch;
      string_buffer[i] = '\0';
    } else if (ch == '\n') {
      wclear(input_window);
      wclear(display_window);
      box(display_window, 0, 0);
      box(input_window, 0, 0);
      wrefresh(input_window);
      wrefresh(display_window);
      mvwprintw(display_window, 10, 10, "The text should be here: %s",
                string_buffer);
      wrefresh(display_window);
      mvwprintw(input_window, 10, 10, "Type here: ");
      i = 0;
      string_buffer[i] = '\0';
    }
  } while (ch != KEY_F(1));
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
