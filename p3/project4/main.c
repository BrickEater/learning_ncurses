#include <stdio.h>

int main(void) {
  float cost;
  printf("Enter the cost: ");
  scanf("%f", &cost);

  printf("With a 5%% tax: %.2f\n", cost + (cost * 0.05));

  return 0;
}
