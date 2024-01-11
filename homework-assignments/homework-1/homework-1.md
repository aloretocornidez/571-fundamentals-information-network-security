# ECE 571 | Cryptography and Network Security | Homework 1

Name: Alan Manuel Loreto Cornídez

Due Date: January 29th, 2024

## 1.1

Consider an automated cash deposit machine in which users provide a card or an
account number to deposit cash. Give examples of confidentiality, integrity, and
avail- ability requirements associated with the system, and, in each case,
indicate the degree of importance of the requirement.

## 1.2

Repeat Problem 1.1 for a payment gateway system where a user pays for an item
using their account via the payment gateway.

## 1.4

For each of the following assets, assign a low, moderate, or high impact level
for the loss of confidentiality, availability, and integrity, respectively.
Justify your answers.

- A student maintaining a blog to post public information.
- An examination section of a university that is managing sensitive information
  about exam papers.
- An information system in a pathological laboratory maintaining the patient’s
  data.
- A student information system used for maintaining student data in a university
  that contains both personal, academic information and routine administrative
  information (not privacy related). Assess the impact for the two data sets
  separately and the information system as a whole.
- A university library contains a library management system, which controls the
  distribution of books among the students of various departments. The library
  management system contains both the student data and the book data. Assess the
  impact for the two data sets separately and the information system as a whole.

## 2.7

What is the smallest positive integer that has exactly $k$ divisors? Provide
answers for values for $1 \le k \le 8$.

## 2.11

Show that an integer N is congruent modulo 9 to the sum of its decimal digits.

$723 \equiv 7 + 2 + 3 \equiv 12 \equiv 1 + 2 \equiv 3 (\text{mod }9)$

This is the basis for the familiar procedure of “casting out 9’s” when
checking computations in arithmetic.

## 2.16

Using the extended Euclidean algorithm, find the multiplicative inverse of:

- 135 mod 61
- 7465 mod 2464
- 42828 mod 6407

## 2.26

Prove the following:

If $p$ is prime, then $f(p^{i}) = p^{i} - p^{i - 1}$.

Hint: What numbers have a factor in common with pi?

## 3.5

One way to solve the key distribution problem is to use a book that both the
sender and the receiver possess. The sender and the receiver use the location of
a word in the book as the code. In order to avoid problems when a particular
plaintext word is not present in the book, the method can be modified to encode
individual letters by the lo- cation of a word beginning with that letter.
Further, to ease the encoding and decoding process, the encoding of a letter is
the pair of line number and the location of the word in that line.

For example, the first sentence of the 1931 book _The American Black Chamber_
(by Herbert Yardley) is:

The secret activities of the American Black Chamber, which I directed, ceased in
1929, sixteen years after I arrived at the Department of State as a young
telegraph operator.

Using this book, the message “tact” can be encoded as (3,4),(1,3),(1,8),(3,4).

The particular scheme discussed in this problem is based on this sentence.
Answer the questions given the following enciphered message:

(1,6), (1,8) (2,1) (3,5), (1,2), (3,4)

- What is the plaintext?
- How secure is the method?
- What kind of practical problems may arise while using this method?

## 3.14

Encrypt the message "meet me at the usual place at ten rather than eight o
clock" using the Hill cipher with the key

$$\begin{pmatrix} 7 && 3 \\ 2 && 5 \end{pmatrix} $$

- Show your calculations and the result.

- Show the calculations for the corresponding decryption of the ciphertext to
  recover the original plaintext.

## 3.15

We have shown that the Hill cipher succumbs to a known plaintext attack if
sufficient plaintext–ciphertext pairs are provided. It is even easier to solve
the Hill cipher if a chosen plaintext attack can be mounted. Describe such an
attack.

## 3.19

Using the Vigenère cipher, encrypt the word "cryptographic" using the word "eng"

## 3.20

This problem explores the use of a one-time pad version of the Vigenère cipher.
In this scheme, the key is a stream of random numbers between 0 and 26. For
example, if the key is 3 19 5 ..., then the first letter of plaintext is
encrypted with a shift of 3 letters, the second with a shift of 19 letters, the
third with a shift of 5 letters, and so on.

- Encrypt the plaintext `sendmoremoney` with the key stream

3 11 5 7 17 21 0 11 14 8 7 13 9

- Using the ciphertext produced in part (a), find a key so that the ciphertext
  decrypts to the plaintext `cashnotneeded`. 

