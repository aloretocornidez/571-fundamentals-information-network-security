---
title: ECE 571 | Cryptography and Network Security | Homework 4
author: Alan Manuel Loreto Cornídez
date: April 2nd, 2024
output: pdf
---

# Problem 10.2

## Part 1

We can show that there exists a number, $n$, that computes to all relatively
prime numbers to 11.

The list of numbers relatively prime to $11$ are:

- 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.

Let us calculate $a \equiv (g^{z} \mod{11})$ where $g = 2$.

$$2^{1} \mod{11} = 2$$

$$2^{2} \mod{11} = 4$$

$$2^{3} \mod{11} = 8$$

$$2^{4} \mod{11} = 5$$

$$2^{5} \mod{11} = 10$$

$$2^{6} \mod{11} = 9$$

$$2^{7} \mod{11} = 7$$

$$2^{8} \mod{11} = 3$$

$$2^{9} \mod{11} = 6$$

$$2^{10} \mod{11} = 1$$

As you can see, all numbers that are relatively prime to 11 can be calculated
with a number $z$ when using the equation $g^{z} \mod{11}$. This means that $2$
is a primitive root of $11$.

## Part 2

Recall:

$Y_{A} = \alpha^{X_{A}} \mod{q}$

Where $q = 11$, $\alpha = 2$, $Y_{A} = 9$

We can calculate $X_{A}$ to be:

$$9 = 2^{X_{A}} \mod{11}$$

Solving for $X_{A}$, we get $X_{A} = 6$$

## Part 3

If user B has public key $Y_B = 3$ what is the secret key $K$ shared with A?

$K = Y_{B}^{X_{A}} \mod{11} = Y_{A}^{X{B}} \mod{11}$$

$K = Y_{B}^{X_{A}} \mod{11} = 3^{6}\mod{11} = 3$$

$$ \therefore K = 3$$

# Problem 15.6

<!-- TODO -->

# Problem 15.7

<!-- TODO -->

# Problem 16.4

<!-- TODO -->

# Problem 16.6

<!-- TODO -->

# Problem 6

The Diffie-Hellman algorithm can help defend a Man-In-The-Middle (MitM) attack
because the Diffie-Hellman algorithm allows a shared secret (in this case, a
key) to be calculated on a public channel. This can be down with no prior shared
secrets, thus allowing the initiation of secure communication on a public
channel. Even though an attacker can encrypt whatever it wants with the victim's
public key, both private keys are required to calculate the actual shared
secret.

Both parties then use their public keys to decrypt the shared secret, thus,
resulting in a shared secret that only works with two parties' private and
public key pairs.

<!-- TODO: Add another defense against the MitM attack -->

One way to defend against a Man-In-The-Middle attack when setting up a shared
secret on the communication channel is by sending

# Problem 7

In this situation, there are 5 total parties. Alice and Bob are the ultimate
source and destination of communication. X-Ray, Yankee, and Zulu, are the three
key distribution centers (KDCs). This extension assumes that the KDC structure
is a 'flat multiple' KDC structure,.

The topological layout of the KDCs are as follows:

Alice $\rightarrow$ X-Ray $\rightarrow$ Yankee $\rightarrow$ Zulu $\rightarrow$
Bob

The steps of communication are as follows:

1. Alice requests access to Yankee by communicating with X-ray.
2. X-Ray communicates with Yankee and establishes a key that Alice can use to
   communicate with Yankee.
3. The created key is delivered to Alice.
4. Alice requests access to Zulu by communicating with Yankee.
5. Yankee communicates with Zulu and establishes a key that Alice can use to
   communicate with Zulu.
6. The created key is delivered to Alice.
7. Alice requests access to Bob by communicating with Zulu.
8. Zulu communicates with Bob and establishes a key that Alice can use to
   communicate with Bob.
9. The created key is delivered to Alice.
10. Alice communicates with Bob.

# Problem 8

No, this scheme does not protect against a server database disclosure because
the server is storing a hash of the password. Given enough time, Eve could find
out the original password by using a dictionary attack to calculate the hash
(assuming the hash function used is public). In addition, the random number can
be eavesdropped and Eve could calculate the hash of Z (or Y) concatenated with
R.

# Problem 10.3

<!-- TODO -->

# Problem 15.2

<!-- TODO -->
