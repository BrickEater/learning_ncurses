#include <ncurses.h>

WINDOW *create_newwin(int height, int width, int starty, int startx,
                      int border);

int main() {
  WINDOW *task_wrapper_window;
  WINDOW *input_wrapper_window;
  WINDOW *input_window;
  int task_wrapper_height, task_wrapper_width, task_wrapper_starty,
      task_wrapper_startx;
  int input_wrapper_height, input_wrapper_width, input_wrapper_starty,
      input_wrapper_startx;
  int ch;

  initscr();
  curs_set(1);
  echo();
  cbreak();

  task_wrapper_height = LINES / 3;
  task_wrapper_width = 100;

  task_wrapper_starty = (LINES - task_wrapper_height) / 6;
  task_wrapper_startx = (COLS - task_wrapper_width) / 2;

  input_wrapper_height = 3;
  input_wrapper_width = 100;

  input_wrapper_starty = (task_wrapper_starty + task_wrapper_height);
  input_wrapper_startx = (COLS - input_wrapper_width) / 2;

  printw("Press F1 to close");
  refresh();

  task_wrapper_window =
      create_newwin(task_wrapper_height, task_wrapper_width,
                    task_wrapper_starty, task_wrapper_startx, 1);
  input_wrapper_window =
      create_newwin(input_wrapper_height, input_wrapper_width,
                    input_wrapper_starty, input_wrapper_startx, 1);
  input_window =
      create_newwin(1, input_wrapper_width - 2, input_wrapper_starty + 1,
                    input_wrapper_startx + 1, 0);

  wprintw(task_wrapper_window, "Goblin Tasks");
  wrefresh(task_wrapper_window);
  wrefresh(input_wrapper_window);
  wmove(input_window, 0, 0);

  keypad(input_window, TRUE);

  while ((ch = wgetch(input_window)) != KEY_F(1)) {
  }

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
