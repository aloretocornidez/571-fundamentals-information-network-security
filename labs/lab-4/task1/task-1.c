#include <openssl/bn.h>
#include <openssl/crypto.h>
#include <stdio.h>

#define NBITS 256

// Print out a big number.
void printBN(char *msg, BIGNUM *a);

int main() {

  // used for temporary variables.
  BN_CTX *ctx = BN_CTX_new();

  // The values that we need (note, declarations are made for 'non-necessary'
  // values for ease of readability.)
  BIGNUM *p = BN_new();
  BIGNUM *q = BN_new();
  BIGNUM *e = BN_new();
  BIGNUM *n = BN_new();
  BIGNUM *one = BN_new();
  BIGNUM *pminus1 = BN_new();
  BIGNUM *qminus1 = BN_new();
  BIGNUM *phi = BN_new();
  BIGNUM *einv = BN_new();
  BIGNUM *d = BN_new();

  // Initializing numbers
  BN_hex2bn(&p, "F7E75FDC469067FFDC4E847C51F452DF");
  BN_hex2bn(&q, "E85CED54AF57E53E092113E62F436F4F");
  BN_hex2bn(&e, "0D88C3");
  BN_dec2bn(&one, "1"); // Decimal Number one.

  // n = p * q
  BN_mul(n, p, q, ctx);
  // printBN("n = ", n);

  // pminus1 = p - 1
  BN_sub(pminus1, p, one);
  // printBN("p-1 = ",pminus1);

  // qminus1 = p - 1
  BN_sub(qminus1, q, one);
  // printBN("q-1 = ",qminus1);

  // phi = (p-1)(q-1)
  BN_mul(phi, pminus1, qminus1, ctx);
  // printBN("phi = ",phi);

  // modular inverse
  BN_mod_inverse(d, e, phi, ctx);
  printBN("d = ", d);

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
