---
title: ECE 571 | Cryptography and Network Security | Homework 4
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

<!-- TODO -->

# Problem 7 | Firewall

<!-- TODO -->

# Problem 8 | IDS Password Management

<!-- TODO -->

# Problem 10 | IDS Base-Rate Fallacy

<!-- TODO -->
