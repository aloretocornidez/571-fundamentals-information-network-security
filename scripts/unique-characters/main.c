#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {

  char sentence[] = "thesnowlaythickonthestepsandthesnowflakesdriven"
                    "bythewindlookedblackintheheadlightsofthecars";

  int alphabet[26];

  // Initialize count array.
  for (int i = 0; i < 26; i++) {
    alphabet[i] = 0;
  }

  // iterate through the string and print characters if they haven't occured
  // yet.
  for (int i = 0; i < strlen(sentence); i++) {
    if (alphabet[sentence[i] - 'a'] == 0) {
      printf("%c", sentence[i]);

      alphabet[sentence[i] - 'a'] = 1;
    }
  }

  printf("\n");

  for (int i = 0; i < 26; i++) {
    printf("%d", alphabet[i]);
  }

  return 0;
}
