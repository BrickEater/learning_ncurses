#include <ncurses.h>

WINDOW *create_newwin(int height, int width, int starty, int startx);

int main() {
  WINDOW *goblin_tasks;
  WINDOW *goblin_input;
  int task_starty, task_startx, task_height, task_width;
  int input_starty, input_startx, input_height, input_width;
  int ch;

  initscr();
  noecho();
  curs_set(0);
  cbreak();
  keypad(stdscr, TRUE);

  task_height = LINES / 3;
  task_width = COLS - 20;

  task_starty = (LINES - task_height) / 6;
  task_startx = (COLS - task_width) / 2;

  input_height = 3;
  input_width = COLS - 20;

  input_starty = task_starty + task_height;
  input_startx = (COLS - task_width) / 2;

  printw("Press F1 to close");
  refresh();
  goblin_tasks =
      create_newwin(task_height, task_width, task_starty, task_startx);
  wprintw(goblin_tasks, "Goblin Tasks");
  wrefresh(goblin_tasks);
  goblin_input =
      create_newwin(input_height, input_width, input_starty, input_startx);
  wrefresh(goblin_input);
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
