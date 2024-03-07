#include <ncurses.h>
#include <string.h>

WINDOW *create_newwin(int height, int width, int starty, int startx,
                      int border);

int main() {
  WINDOW *display_wrapper_window;
  WINDOW *input_wrapper_window;
  WINDOW *display_window;
  WINDOW *input_window;

  int display_height, display_width, display_starty, display_startx;
  int input_height, input_width, input_starty, input_startx;
  int ch;
  char input_buffer[80] = {0};
  int input_index = 0;

  initscr();
  cbreak();
  echo();
  curs_set(1);

  display_height = (LINES / 3);
  display_width = 100;

  display_starty = (LINES - display_height) / 6;
  display_startx = (COLS - display_width) / 2;

  input_height = 3;
  input_width = 100;

  input_starty = display_starty + display_height;
  input_startx = display_startx;

  printw("Press F1 to close");
  refresh();

  display_wrapper_window = create_newwin(display_height, display_width,
                                         display_starty, display_startx, 1);
  display_window = create_newwin(display_height - 2, display_width - 2,
                                 display_starty + 1, display_startx + 1, 0);
  input_wrapper_window =
      create_newwin(input_height, input_width, input_starty, input_startx, 1);
  input_window = create_newwin(input_height - 2, input_width - 2,
                               input_starty + 1, input_startx + 1, 0);

  wprintw(display_wrapper_window, "Goblin Tasks");
  wrefresh(display_wrapper_window);
  wmove(input_window, 0, 0);

  keypad(input_window, TRUE);

  while (1) {
    ch = wgetch(input_window);

    if (ch == KEY_F(1)) {
      break;
    } else if (ch == '\n') {
      // input_buffer[input_index] = '\0';
      // wprintw(display_window, "%s\n", input_buffer);
      // wrefresh(display_window);
      // memset(input_buffer, 0, sizeof(input_buffer));
      // input_index = 0;
      wgetstr(input_window, input_buffer);
      wprintw(display_window, "%s\n", input_buffer);
      wrefresh(display_window);
      werase(input_window);
      wrefresh(input_window);
    }
  }

  endwin();
  return 0;
}

WINDOW create_newwin(int height, int width, int starty, int startx,
                     int border) {
  WINDOW *local_win;
  local_win = newwin(height, width, starty, startx);
  if (border) {
    box(local_win, 0, 0);
  }
  wrefresh(local_win);
  return local_win;
}
