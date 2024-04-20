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

- Man-in-the-Middle Attack: 

- Password Sniffing:

- IP Spoofing:

- IP Hijacking:

- SYN Flooding:

# Problem 6

<!-- TODO -->

# Problem 7 | Firewall

<!-- TODO -->

# Problem 8 | IDS Password Management

<!-- TODO -->

# Problem 10 | IDS Base-Rate Fallacy

<!-- TODO -->
