#include <stdio.h>
#include <stdlib.h>

#define LEN 16 // 128 bits

int main(int argc, char *argv[]) {

  unsigned char *key = (unsigned char *)malloc(sizeof(unsigned char) * LEN);

  // open /dev/random
  FILE *random = fopen("/dev/urandom", "r");

  // read from the random pointer
  fread(key, sizeof(unsigned char) * LEN, 1, random);

  // close the file
  fclose(random);

  // Print the key out.
  for (int i = 0; i < LEN; i++) {

    printf("%.2x", (unsigned char)key[i]);
  }

  // adding a new line for nice output on terminal, would not be used in actual program.
  printf("\n");
}
