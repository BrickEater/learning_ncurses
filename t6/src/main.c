#include <ncurses.h>

#define HEIGHT LINES / 3
#define WIDTH 100
#define STARTY (LINES - HEIGHT) / 6
#define STARTX (COLS - WIDTH) / 2
#define MAX_INPUT 256

WINDOW *create_newwin(int height, int width, int starty, int startx,
                      int border);

int main() {
  WINDOW *display_wrapper_window;
  WINDOW *display_window;
  WINDOW *input_wrapper_window;
  WINDOW *input_window;

  int ch, string_index = 0;
  char input_buffer[MAX_INPUT] = {0};

  initscr();
  cbreak();
  echo();
  curs_set(1);

  printw("Press F1 to close");
  refresh();

  display_wrapper_window = create_newwin(HEIGHT, WIDTH, STARTY, STARTX, 1);
  input_wrapper_window = create_newwin(3, WIDTH, STARTY + HEIGHT, STARTX, 1);
  display_window =
      create_newwin(HEIGHT - 2, WIDTH - 2, STARTY + 1, STARTX + 1, 0);
  input_window =
      create_newwin(1, WIDTH - 2, STARTY + HEIGHT + 1, STARTX + 1, 0);
  wprintw(display_wrapper_window, "GOBLIN TASKS");
  wrefresh(display_wrapper_window);
  wmove(input_window, 0, 0);
  keypad(input_window, TRUE);

  do {
    ch = wgetch(input_window);
    if (ch != KEY_F(1) && ch != '\n' && string_index < MAX_INPUT - 1) {
      input_buffer[string_index++] = ch;
      input_buffer[string_index] = '\0';
    } else if (ch == '\n') {
      wclear(input_window);
      wrefresh(input_window);
      wprintw(display_window, "[ ]%s\n", input_buffer);
      wrefresh(display_window);
      wmove(input_window, 0, 0);
      string_index = 0;
      input_buffer[string_index] = '\0';
    }
  } while (ch != KEY_F(1));
  endwin();
  return 0;
}

WINDOW *create_newwin(int height, int width, int starty, int startx,
                      int border) {
  WINDOW *local_win;
  local_win = newwin(height, width, starty, startx);
  if (border) {
    box(local_win, 0, 0);
  }
  wrefresh(local_win);
  return local_win;
}
