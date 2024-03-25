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
  BIGNUM *n = BN_new();
  BIGNUM *e = BN_new();
  BIGNUM *c = BN_new();
  BIGNUM *d = BN_new();
  BIGNUM *M = BN_new();

  // initialize variables.
  BN_hex2bn(&n, "DCBFFE3E51F62E09CE7032E2677A78946A849DC4CDDE3A4D0CB81629242FB1A5");
  BN_hex2bn(&e, "010001");
  BN_hex2bn(&M, "4120746f702073656372657421");
  BN_hex2bn(&d, "74D806F9F3A62BAE331FFE3F0A68AFE35B3D2E4794148AACBC26AA381CD7D30D");


  BN_mod_exp(c, M, e, n, ctx);
  printBN("Ciphertext: ", c);

  BN_mod_exp(M, c, d, n, ctx);
  printBN("Plaintext: ", M);

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
