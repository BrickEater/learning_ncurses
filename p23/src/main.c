#include <stdio.h>
#define MAX_LINE_LENGTH 256

int main() {
  FILE *fp;
  char buffer[MAX_LINE_LENGTH];

  fp = fopen("/home/goblin/Repos/100_projects_C/p23/files/example.txt", "r");
  if (fp == NULL) {
    perror("Error opening file");
    return -1;
  }

  while (fgets(buffer, MAX_LINE_LENGTH, fp) != NULL) {
    printf("%s", buffer);
  }

  fclose(fp);

  return 0;
}
