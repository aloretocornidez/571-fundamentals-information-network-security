#include <openssl/bn.h>
#include <openssl/crypto.h>
#include <stdio.h>

#define NBITS 256

// Print out a big number.
void printBN(char *msg, BIGNUM *a);

int main(int argc, char *argv[]) {

  // used for temporary variables.
  BN_CTX *ctx = BN_CTX_new();

  // initialize a BIGNUM variable.
  BIGNUM *tempA = BN_new();

  // Assign a value from a decimal number string.
  BN_dec2bn(&tempA, "12345678901112231223");

  // Assign a value from a hex number string.
  BN_hex2bn(&tempA, "2A3B4C55FF77889AED3F");

  // Generate a random number of 128 bits.
  BN_rand(tempA, 123, 0, 0);

  // Generate a random prime number of 128 bits.
  BN_generate_prime_ex(tempA, 128, 1, NULL, NULL, NULL);

  // Example
  BIGNUM *a = BN_new();
  BIGNUM *b = BN_new();
  BIGNUM *n = BN_new();
  BIGNUM *res = BN_new();

  // initialize a, b, n
  BN_generate_prime_ex(a, NBITS, 1, NULL, NULL, NULL);
  BN_dec2bn(&b, "273489463796838501848592769467194369268");
  BN_rand(n, NBITS, 0, 0);
  // res = a*b
  BN_mul(res, a, b, ctx);
  printBN("a * b = ", res);
  // res = aˆb mod n
  BN_mod_exp(res, a, b, n, ctx);
  printBN("aˆc mod n = ", res);

  return 0;
}

void printBN(char *msg, BIGNUM *a) {

  // Convert the BIGNUM to a number string.
  char *number_str = BN_bn2dec(a);

  // Print out the number string.
  printf("%s %s\n", msg, number_str);

  // Free the dynamically allocated memory
  OPENSSL_free(number_str);
}
