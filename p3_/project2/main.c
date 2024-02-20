#include <stdio.h>

int main(void) {
  float radius;
  printf("Please enter the radius: ");
  scanf("%f", &radius);
  printf("the volume is: %.2f\n",
         (4.0 / 3.0 * 3.14159 * radius * radius * radius));

  return 0;
}
