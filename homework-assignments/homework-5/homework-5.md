---
title: ECE 571 | Cryptography and Network Security | Homework 5
author: Alan Manuel Loreto Cornídez
date: April 2nd, 2024
output: pdf
---

# 16.9

Bob can verify the identity of the sender (in this case, a ticket claiming to be
from Alice) because Alice must first generate a ticket granting ticket from the
Authentication server, $K_{C-TGS}$ and then use the Ticket granting ticket to
create a session with Bob. Bob can decrypt the session key (according to the
Kerberos protocol) to ensure that the identity of the sender (in this case,
Alice) is verified.

# 16.10

Alice can verify the identity of the response by decrypting the response from
(who we are testing to be) Bob, and verify that the ID of the message matches
Bob's identity for the current session.

# 16.11

The ticket in Kerberos contains a User ID, the Authenticated Server, Ticket
Granting Server (TGS) ID, a Password, and a shared secret key, all of these are
used together to ensure secure communication.

# 17.2

The MAC address is used to create a hash of each block in the message stream
transmitted during TLS exchanges.

# 17.3

How TLS addresses each attack:

- Brute-Force Cryptanalytic Attack: 128-bit encryption requires the attacker to
  test $2^{128}$ keys.

- Known Plaintext Dictionary Attack: There are 40 kb available as plaintext in a
  TLS message, however, there are still 128 bits that must be decrypted. The
  avalanche effect of the algorihtms used in encryption makes it less likely
  that a TLS packet will be cracked, even with a targeted plain-text attack.

- Replay Attack: The use of Nonces in the handshake part of the TLS protocol
  makes a replay attack much harder to execute.

- Man-in-the-Middle Attack: The TLS protocol requires that a connection be
  established before messages are sent. During the initial handshake protocol,
  in TLSv1.3, the use of of the Diffie-Hellman or Elliptic Curve Diffie-Hellman
  key exchanges ensures that these handshakes are not compromised. (TLSv1.3
  removed static DH key exchanges and does not allow RSA encryption so that
  cipher suites are not compromised if the private key is compromised.)

- Password Sniffing: Simply by using encryption, this attack is avoided.

The next three issues relate to network behaviour and not the communication
between two endpoints (what TLS is made for) so TLS does not assist in
protecting against these attacks.

- IP Spoofing: Unfortunately, IP spoofing is not directly handled by the TLS
  protocol, in order to determine the source of a network packet, other measures
  must be taken such as the use of an intrusion detection system or the use of
  ingress/outgress filtering of packets.

- IP Hijacking: Similar to IP Spoofing, IP hijacking is not protected against by
  the TLS protocol.

- SYN Flooding: SYN flooding is not protected against by the TLS protocol
  either.

# Problem 6

- As transmitted by A:

  - src: A
  - dest: B

- As transmitted by F1:

  - src: A
  - dest: B
  - protocol: ESP

- As recieved by B:

  - src: F1
  - dest: F2
  - protocol: ESP

# Problem 7 | Firewall

- Rule 1: Allow any source address communicating with 192.168.1.0 with a port $>
  1023$
- Rule 2: Deny traffic from 192.168.1.1(the firewall) from all ports to any
  address and any port.
- Rule 3: Deny all traffic that has a destination address to 192.168.1.1(the
  firewall)
- Rule 4: Allow all traffic with source IP 192.168.1.0 from all src ports to all
  dest ports and all dest IPs.
- Rule 5: Allow all traffic that has a dest IP 192.168.1.2 with a dest port to
  the SMTP port.
- Rule 6: Allow all traffic that has a dest IP 192.168.1.3 with a dest port to
  the HTTP port.
- Rule 7: Deny all other traffic.

# Problem 8 | IDS Password Management

- Without Feedback:

$$\frac{26^{4}}{2} = 228,488 \text{ seconds} = 63.5 \text{ hours}$$

- With Feedback for flagging an error as each incorrect character is entered:

$$13 \times 4 = 52 \text{ seconds}$$

# Problem 10 | IDS Base-Rate Fallacy

Define the following:

$G$: The cab is green.

$B$: The cab is blue.

$W_{G}$: Witness identifies a green cab.

$W_{B}$: Witness identifies a blue cab.

We are given:

Probability the cab is blue: $P(B) = 0.1$

Probability the cab is green: $P(G) = 0.9$

Probability the witness identifies a blue cab correctly: $P(W_{B} | B) = 0.9$
Probability the witness identifies a blue cab incorrectly: $P(W_{B} | G) = 1 -
P(W_{B} | B) = 0.1$

Using Bayes' Theorem: $P(B | W_{B}) = \frac{P(W_{B} | B) \times P(B)}{P(W_{B})}$

We require $P(W_{B})$. Using the Law of total probability, we can calculate:

$P(W_{B}) = P(W_{B} | B) \times P(B) + P(W_{B} | G) \times P(G)$

$P(W_{B}) = (0.9 \times 0.1) + (0.1 \times 0.9) = 0.18$

Let us plug in the values to Bayes' Theorem:

$P(B | W_{B}) = \frac{P(W_{B} | B) \times P(B)}{P(W_{B})} = \frac{0.9 \times
0.1}{0.18} = 0.5$

$\therefore P(B | W_{B}) = 0.5$

This is a perfect example of the base-rate fallacy that often occurs when you
fail to take into account the sample size of a group that is being evaluated.
