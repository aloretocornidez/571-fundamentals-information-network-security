#include <openssl/bn.h>
#include <openssl/crypto.h>
#include <stdio.h>

#define NBITS 256

// Print out a big number.
void printBN(char *msg, BIGNUM *a);

int main() {

  // used for temporary variables.
  BN_CTX *ctx = BN_CTX_new();

  // Variables
  BIGNUM *s = BN_new();
  BIGNUM *e = BN_new();
  BIGNUM *n = BN_new();
  BIGNUM *M = BN_new();

  // initialize variables.
  BN_hex2bn(&s, "643D6F34902D9C7EC90CB0B2BCA36C47FA37165C0005CAB026C0542CBDB6803F");
  BN_hex2bn(&e, "010001");
  BN_hex2bn(&n, "AE1CD4DC432798D933779FBD46C6E1247F0CF1233595113AA51B450F18116115");

  BN_mod_exp(M, s, e, n, ctx);
  printBN("Message: ", M);

  return 0;
}

void printBN(char *msg, BIGNUM *a) {

  // Convert the BIGNUM to a number string.
  char *number_str = BN_bn2hex(a);

  // Print out the number string.
  printf("%s %s\n", msg, number_str);

  // Free the dynamically allocated memory
  OPENSSL_free(number_str);
}


