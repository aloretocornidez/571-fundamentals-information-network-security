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

$$
\begin{bmatrix} 2^{1} \mod{11} = 2\\ 2^{2} \mod{11} = 4\\ 2^{3} \mod{11} =
8\\ 2^{4} \mod{11} = 5\\ 2^{5} \mod{11} = 10\\ 2^{6} \mod{11} = 9\\ 2^{7}
\mod{11} = 7\\ 2^{8} \mod{11} = 3\\ 2^{9} \mod{11} = 6\\ 2^{10} \mod{11} = 1\\
\end{bmatrix}
$$

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

$K = Y_{B}^{X_{A}} \mod{11} = Y_{A}^{X_{B}} \mod{11}$$

$K = Y_{B}^{X_{A}} \mod{11} = 3^{6}\mod{11} = 3$$

$$ \therefore K = 3$$

# Problem 10.3

> Give at least one method Alice and Bob could use to agree on a key.

A way for Alice and Bob to calculate shared secret key is by calculating
$(X_{A}^{\alpha} X_{B}^{\alpha}) = (X_{A}X_{B})^{\alpha}$

However, this is done using the public information on the communication channel,
so it is not secure, thus, Darth can find the secret key (as well as everyone
with access to the communication channel).

> Can Darth break your system without finding the secret numbers?

However, this is done using the public information on the communication channel,
so it is not secure, thus, Darth can find the secret key (as well as everyone
with access to the communication channel).

> Can Darth find the secret numbers?

In addition, Darth can find the secret numbers that are being used can be
calculated using Fermat's Little Theorem in the following way:

<!-- TODO -->

# Problem 15.6

## Part A

A believes that she shares $K'_{AB}$ with B since B returns the N encrypted with
the private key known by both parties.

B believes that he shares $K'_{AB}$ with A since $N$ is sent back to B encrypted
with the private key that both parties have. (Using the previously established
session key.)

A believes that $K'_{AB}$ is fresh since A chooses the $N$ to use at the
beginning of the session initialization.

B believes that $K'_{AB}$ is fresh since A returns a message encrypted with the
session key that B just created.

## Part B

Since the number used to initialize the session is sent in plaintext, C can
pretend to be A and request a session key from B. When B responds to C, C can
send the response to A. This Man-In-The-Middle attack (using reflection) can
continue until the session key is generated for both A and B through C. After
which, communication from A to B can be stopped by C since C is between both B
and C.

## Part C

There is no verification for the source of the message. The encryption done with
the private shared key ensures that messages are secure over the public channel,
but something needs to be done to verify the source of the message. I propose
including the use of signatures by each party with a public key and private key
protocol similar to RSA to ensure that communication is actually being sent from
A and B.

# Problem 15.7

Core components of a PKI are the following:

Certificate Authority: A trusted provided of certificates

Certificate Revocation List: To make sure that the certificates do not remain
valid forever.

In addition, there must be the following aspects of a PKI:

- A repository for retrieving certificates
- A method of revoking certificates (In this case, the Certificate Revocation
  List)
- A method of evaluating a chain of certificates from a trust anchor to the
  target name. (Have the ability to verify certificates from many different CAs)

# Problem 15.2

> Finish the sentence for Holmes.

**"Well, I think you have your man, Lestrade. The protocol isn’t secure because
the server doesn’t authenticate users who send him a request. Apparently
designers of the protocol have believed that sending $E(K_x, R)$ implicitly
authenticates user X as the sender, as only X (and the server) knows $K_x$. But
you know that $E(K_a, R)$ and $E(R, M)$ (see steps 1 and 3 of the protocol), the
man, let's denote him as $Z$, will continue pretending to be A **

$Z$, will continue pretending to be A and send requests for copies of the
documents. After which, $Z$ can perform a plethora of attacks to decrypt the
documents, assuming he has the computational power. In addition, since no
verification of identity is present in the protocol, $Z$ can send malicious
requests to manipulate the data on the servers for malicious purposes.

<!-- TODO -->

# Problem 16.4

Usage 1: This usage involves A sending B the nonce, and B encrypting the nonce
with the shared secret key. This usage would be useful for verifying that the
communication that is sent across the channel is encrypted correctly, however,
it is vulnerable to a reflection/Man-In-The-Middle attack because the nonce is
sent in plaintext over an insecure channel before the nonce is solved.

Usage 2: Usage 2 is an inverse of usage one in a way, however, this usage sends
the encrypted nonce first, and then B can send the plaintext nonce over the
channel. This is useful to verify that the en/decryption scheme is valid.
However, this usage is also vulnerable to a reflection/Man-In-The-Middle attack.

Usage 3: Usage 3 sends everything encrypted, the nonce is also incremented. This
is useful when communicating messages that are time limited and have an
increasing value, like packets traveling over a network. This protocol is
vulnerable to a replay attack (with a single or multiple server topology) as
well as a reset-clock attack.

# Problem 16.6

This protocol is (as the problem states) a one-way authentication protocol that
uses asymmetric encryption.

Alice sends Bob her identification. Bob then responds to Alice with a nonce,
$R_{1}$, Alice then sends Bob a message containing the nonce encrypted with
Alice's private key.

It is vulnerable to an offline password-guessing attack as well as a database
reading attack because both parties share the secret key. In addition, the
protocol is susceptible to a replay attack because there is no verification of
the identity of the person sending their ID.

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

The simplest way to defend against a Man-In-The-Middle attack is by verifying
the identity of the parties that are communicating. In this case, communicating
using public and private key pairs to sign messages sent across the
communication channel. This ensures that communication is occurring between
intended parties.

# Problem 7

In this situation, there are 5 total parties. Alice and Bob are the ultimate
source and destination of communication. X-Ray, Yankee, and Zulu, are the three
key distribution centers (KDCs). This extension assumes that the KDC structure
is a 'flat multiple' KDC structure.

The topological layout of the KDCs are as follows:

$\text{Alice }\rightarrow \text{X-Ray }\rightarrow\text{Yankee
}\rightarrow\text{Zulu }\rightarrow\text{Bob}$

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
