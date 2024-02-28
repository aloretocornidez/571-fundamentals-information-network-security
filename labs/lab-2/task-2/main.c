#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define KEYSIZE 16

int main(int argc, char *argv[]) {

  int i;
  char key[KEYSIZE];
  char *p;

  long long inputTime = atoi(argv[1]);

  // printf("%lld\n", (long long)time(NULL));

  // printf("%s\n", argv[1]);

  srand(inputTime);

  for (i = 0; i < KEYSIZE; i++) {
    key[i] = rand() % 256;
    printf("%.2x", (unsigned char)key[i]);
  }

  printf("\n");
}
