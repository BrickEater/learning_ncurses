#include <curses.h>
#include <menu.h>
#include <ncurses.h>

#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))
#define CTRLD 4

char *choices[] = {
    "Choice 1", "Choice 2", "Choice 3", "Choice 4", "Exit",
};

int main() {
  ITEM **my_items;
  int c;
  MENU *my_menu;
  int n_choices, i;
  ITEM *cur_item;

  initscr();
  cbreak();
  noecho();
  keypad(stdscr, TRUE);
}
