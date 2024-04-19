---
title: ECE 571 | Cryptography and Network Security | Homework 5
author: Alan Manuel Loreto Cornidez
date: April 19th, 2024
output: pdf
---

# 16.9

In Kerberos, when Bob receives a Ticket from Alice, how does he know it came
from Alice?

# 16.10

n Kerberos, when Alice receives a reply, how does she know it came from Bob
(that it’s not a replay of an earlier message from Bob)?

# 16.11

In Kerberos, what does the Ticket contain that allows Alice and Bob to talk
securely?

# 17.2

What purpose does the MAC serve during the change cipher spec TLS exchange?

# 17.3

Consider the following threats to Web security and describe how each is
countered by a particular feature of TLS.

- a. Brute-Force Cryptanalytic Attack: An exhaustive search of the key space for
  a conventional encryption algorithm.

- b. Known Plaintext Dictionary Attack: Many messages will contain predictable
  plaintext, such as the HTTP GET command. An attacker constructs a dictionary
  containing every possible encryption of the known- plaintext message. When an
  encrypted message is intercepted, the attacker takes the portion containing
  the encrypted known plaintext and looks up the ciphertext in the dictionary.
  The ciphertext should match against an entry that was encrypted with the same
  secret key. If there are several matches, each of these can be tried against
  the full ciphertext to determine the right one. This attack is especially
  effective against small key sizes (e.g., 40-bit keys).

- c. Replay Attack: Earlier TLS handshake messages are replayed.

- d. Man-in-the-Middle Attack: An attacker interposes during key exchange,
  acting as the client to the server and as the server to the client

- e. Password Sniffing: Passwords in HTTP or other application traffic are
  eavesdropped.

- f. IP Spoofing: Uses forged IP addresses to fool a host into accepting bogus
  data.

- g. IP Hijacking: An active, authenticated connection between two hosts is
  disrupted and the attacker takes the place of one of the hosts.

- h. SYN Flooding: An attacker sends TCP SYN messages to request a connection
  but does not respond to the final message to establish the connection fully.
  The attacked TCP module typically leaves the “half-open connection” around for
  a few minutes. Repeated SYN messages can clog the TCP module.

# Problem 6

Referring to Figure 17-2, suppose A and B are using IPsec in transport mode, and
F1 and F2 have established an encrypted tunnel using IPsec. Assume A sends a TCP
packet to B. Show the relevant fields of the IP header(s) as given to A’s IP
layer, as transmitted by A, as transmitted by F1, and as received by B.

# Problem 7 | Firewall

The Table below shows a sample of a packet filter firewall ruleset for an
imaginary network of IP address that range from 192.168.1.0 to 192.168.1.254.
Describe the effect of each rule. (Hint: 192.168.1.1 is the IP address of the
Firewall)

# Problem 8 | IDS Password Management

Assume that passwords are selected from four-character combinations of 26
alphabetic characters. Assume that an adversary is able to attempt passwords at
a rate of one per second.

- (a). Assuming no feedback to the adversary until each attempt has been
  completed, what is the expected time to discover the correct password?
- (b). Assuming feedback to the adversary flagging an error as each incorrect
  character is entered, what is the expected time to discover the correct
  password?

# Problem 10 | IDS Base-Rate Fallacy

A taxicab was involved in a fatal hit-and-run accident at night. Two cab
companies, the Green and the Blue, operate in the city. You are told that:

- 90% of the cabs in the city are Green and 10% are Blue.
- A witness identified the cab as Blue.

The court tested the reliability of the witness under the same circumstances
that existed on the night of the accident and concluded that the witness was
correct in identifying the color of the cab 90% of the time. What is the
probability that the cab involved in the incident was Blue rather than Green?
