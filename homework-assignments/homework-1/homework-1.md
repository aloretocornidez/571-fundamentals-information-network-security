# ECE 571 | Cryptography and Network Security | Homework 1

Name: Alan Manuel Loreto Cornídez

Due Date: January 29th, 2024

## 1.3

Consider a desktop publishing system used to produce documents for various
organizations.

### Give an example of a type of publication for which confidentiality of the stored data is the most important requirement.

The reports should only be accessible by people who are authorized to view
aforementioned reports. This means protecting the confidentiality of each report
is important. Only authorized requestors of an organization should have access
to organization's financial report.

### Give an example of a type of publication in which data integrity is the most important requirement.

For financial reports, it is important that all of the cash flow statements,
balance sheets, and income statements all have the correct numbers for each of
their values if they want to maintain a non-threated relationship with the IRS.

### Give an example in which system availability is the most important requirement.

Any company that works with stock trading would want the data to be available to
them at a moment's notice. This means that the availability of APIs should be
present in addition to resistance from denial of service attacks. This assumes
authorized access.

## 1.4

For each of the following assets, assign a low, moderate, or high impact level
for the loss of confidentiality, availability, and integrity, respectively.
Justify your answers.

### An organization managing public information on its Web server.

**Severity: Low**

- Confidentiality: Information is public, so data confidentiality is not
  present.

- Availability: Information is public, so data availability is not lost.

- Integrity: Information is public, so data integrity is not lost.

### A law enforcement organization managing extremely sensitive investigative information.

**Severity: High**

- Confidentiality: Loss of confidentiality will result in possible national
  security concerns. (Depending on the security clearance required for access.)

- Availability: Loss of availability is a national security concern.

- Integrity: Loss of data integrity is a national security concern.

### A financial organization managing routine administrative information (not privacy-related information).

**Severity: Moderate**

- Confidentiality: If administrative information is not kept confidential,
  effects from loss of confidentiality will likely result in non-security and
  non-health issues for the members of the organization.

- Availability: Loss of administrative data, while inconvenient for an
  organization, does not cause any national security issues. However, company
  functions may not be able to occur until the data is regenerated.

- Integrity: Loss of data integrity for administrative information does not
  cause national security issues, however, data must still be generated again.

### An information system used for large acquisitions in a contracting organization contains both sensitive, pre-solicitation phase contract information and routine administrative information. Assess the impact for the two data sets separately and the information system as a whole.

- Contract Information **Severity: Moderate**

- Confidentiality: Loss of confidentiality will result in prices for contractors
  being made public.

- Availability: Loss of availability of the data will result in the need to
  reacquire the data.

- Integrity: Loss of data integrity will result in the need to reacquire the
  data. But no security related issues.

- Admin Information **Severity: Moderate**

Justification: Refer to previous part above to the financial organization.

### A power plant contains a SCADA (supervisory control and data acquisition) system controlling the distribution of electric power for a large military installation. The SCADA system contains both real-time sensor data and routine administrative information. Assess the impact for the two data sets separately and the information system as a whole.

**Severity: High**

Loss of the CIA principles in the CIA triad is cause for national security
concern in this situation. Foreign powers can cause power loss if
confidentiality is lost. Base capabilities will be wrongly estimated if
integrity is not present. Availability of the data is important for monitoring.

## 2.10

Find the multiplicative inverse of each nonzero element in $Z_{5}$.

$$Z_{5} = \{0, 1, 2, 3, 4, 5\}$$

It is important to note: $a$ has a multiplicative inverse in $Z_{n}$ if and only
if $a$ is relatively prime to $n$

### Response

Recall the multiplicate inverse: $\equiv (a)\text{mod}(5) = 1$

The number pairs that satisfy this equation are as follows:

- $(1*1)\text{mod}(5) = 1$
- $(2*3)\text{mod}(5) = 1$
- $(4*4)\text{mod}(5) = 1$

Therefore, the multiplicative inverses in $\{(1,2), (2,3), (4,4)\}$

## 2.12

Determine:

$$\text{gcd}(24140, 16762)$$

$$\text{gcd}(4655, 12075)$$

### Response

$$\text{gcd}(24140, 16762)$$ Using the euclidian algorithm:

- $(24140)\text{mod}(16762) = 7378$
- $(16762)\text{mod}(7378) = 2006$
- $(7378)\text{mod}(2006) = 1360$
- $(2006)\text{mod}(1360) = 646$
- $(1360)\text{mod}(646) = 68$
- $(646)\text{mod}(68) = 34$
- $(68)\text{mod}(34) = 0$
- $\therefore \text{gcd}(24140, 16762) = 34$

$$\text{gcd}(4655, 12075)$$

- $(12075)\text{mod}(4655) = 2765$
- $(4655)\text{mod}(2765) = 1890$
- $(2765)\text{mod}(1890) = 875$
- $(1890)\text{mod}(875) = 140$
- $(875)\text{mod}(140) = 35$
- $(140)\text{mod}(35) = 0$
- $\therefore \text{gcd}(4655,12075) = 35$

## 2.13

### Part A

Suppose that $m=qn+r$ with $q>0$ and $0\le r < n$.

Show that $\frac{m}{2} > r$.

### Response

Given $\frac{m}{2} > r$, we know $m > 2r$.

$m = qn + r$ so $2r < qn + r$

Which means:

$r < qn$

Recall: $0 \le r < n$

Since $n > r$, the above statement is true. (Assuming q is an integer)

Thus, the original statement is true.

$\frac{m}{2} > r$

### Part B

Let $A_{i}$ be the value of $A$ in the Euclidean algorithm after the $i$th
iteration.

Show that: $A_{i+2} < \frac{A_{i}}{2}$

### Response

From a recursive implementation of the Euclidean algorithm, we get the following
relationship for terms used in the Euclidian algorithm:

$$A_{i} = q_{i}A_{i+1} + A_{i+2}$$

From part A, the relationship $A_{i+2} < \frac{A_{i}}{2}$ follows.

### Part C

Show that if $m$, $n$, and $N$ are integers with $(1 \le m, n \le 2^{N})$, then
the Euclidean algorithm takes at most $2N$ steps to find the $\text{gcd}(m,n)$

### Response

From part B, we can see that $A_{3} < 2^{-1} A_{1}$, that $A_{5} < 2^{-1} A_{3}
< 2^{-2} A_{5}$. This also applies generally so that $A_{2j+1} < 2^{-j} A_{1}$
for all integers such that $1 < 2j + 1 \le k + 2$ where k is the number of steps
in the algorithm.

For odd $k$: $j = \frac{k}{2}$

For even $k$: $j = \frac{k+1}{2}$

In both cases, $k < 2N$.

## 2.16(c)

Find the multiplicative inverse of $550\text{mod}(1769)$ using the extended
Euclidian algorithm.

### Response

Constructing the table:

$\text{gcd}(550, 1769)$

$a = 1769$ $b = 550$

| index $i$ | quotient     | remainder          | $s_i$         | $t_i$          |
| --------- | ------------ | ------------------ | ------------- | -------------- |
| 0         |              | 1769               | 1             | 0              |
| 1         |              | 550                | 0             | 1              |
| 2         | 1769/550 = 3 | 1769- 3\*550 = 119 | 1 - 3\*0 = 1  | 0 - 3\*1 = -3  |
| 3         | 550/119 = 4  | 550 - 4\*119 = 74  | 0 - 4\*1 = -4 | 1 - 4\*-3 = 13 |
| 4         | 119/74 = 1   | 119-74 = 45        | 1 + 4 = 5     | -3 -13 = -16   |
| 5         | 1            | 29                 | -9            | 29             |
| 6         | 1            | 16                 | 14            | -45            |
| 7         | 1            | 13                 | -23           | 74             |
| 8         | 1            | 3                  | 37            | -119           |
| 9         | 4            | 1                  | 125           | 550            |
| 10        | 3            | 0                  | -338          | -1769          |

One iteration before the remainder equals zero, $t_i$ is 550.

$\therefore 550$ is the multiplicative inverse of 1769 and 550.

## 2.26

- Prove the following: If $p$ is prime, then $\phi(p^{i}) = p^{i} - p^{i-1}$

Hint: What numbers have a factor in common with $p^{i}$?

### Response

Since $p$ is prime, we know that the only possible values of $\text{GCD}(p,m) =
1, p, p^{2}, ..., p^{k-1}P = p^{k}$.

$\text{GCD}(p,m) > 1$ only occurs when $m$ is a multiple of $p$. Such that $m
\in \{p, 2p, 3p, ..., p^{k}\}$ and there are $p^{k-1}$ multiples not greater
than $p^{k}$.

Therefore, the other $p^{k} - p^{k-1}$ numbers are relatively prime to $p^{k}$.

## 3.5

One way to solve the key distribution problem is to use a line from a book that
both the sender and the receiver possess. Typically, at least in spy novels, the
first sentence of a book serves as the key. The particular scheme discussed in
this problem is from one of the best suspense novels involving secret codes,
Talking to Strange Men, by Ruth Rendell. Work this problem without consulting
that book!

Consider the following message: `SIDKHKDM AF HCRKIABIE SHIMC KD LFEAILA`

This cipher-text was produced using the first sentence of The Other Side of
Silence (a book about the spy Kim Philby):

> The snow lay thick on the steps and the snowflakes driven by the wind looked
> black in the headlights of the cars.

- What is the encryption algorithm?

- How secure is it?

- To make the key distribution problem simple, both parties can agree to use the
  first or last sentence of a book as the key. To change the key, they simply
  need to agree on a new book. The use of the first sentence would be preferable
  to the use of the last. Why?

### Response

### Part A

What is the encryption algorithm?

The encryption algorithm is a substitution cipher.

We use the sentence given to us by the textbook to populate the next letter in
the alphabet with the unique characters as we come across them in the given
sentence.

```

Cipher Alphabet:    thesnowlayickpdfrvbg
Plaintext Alphabet: abcdefghiklmnopqrstu
```

Applying the substitution to the letters in the message we get the following:

```
cipher:    SIDKHKDM AF HCRKIABIE SHIMC KD LFEAILA
plaintext: basilisk to leviathan blake is contact
```

```

```

### Part B

How secure is it?

Since it is a simple substitution cipher, it is not very secure. 

### Part C

To make the key distribution problem simple, both parties can agree to use the
first or last sentence of a book as the key. To change the key, they simply need
to agree on a new book. The use of the first sentence would be preferable to the
use of the last. Why?

All letters of the key may not be populated if the last sentence is chosen, but if the first sentence is chosen, then all letters will eventually be populated.

## 3.14

A. Encrypt the message “meet me at the usual place at ten rather than eight
o'clock” using the Hill cipher with the key:

$$\begin{pmatrix} 9 && 4 \\ 5 && 7 \end{pmatrix}$$

Show your calculations and the result.

B. Show the calculations for the corresponding decryption of the ciphertext to
recover the original plaintext.

### Response | Part A

First, the plaintext message has to be encoded to integers. In this case, the
letters shall be encoded by their index in the alphabet.

In this case, I shall encode spaces in the message as the last index of the
alphabet. So index 27 shall be ' '. Following this encoding, the message is
encoded into the following message:

```
12 4 4 19 27 12 4 27 0 19 27 19 7 4 27 20
18 20 0 11 27 15 11 0 2 4 27 0 19 27 19 4
13 27 17 0 19 7 4 17 27 19 7 0 13 27 4 8
6 7 19 27 14 2 11 14 2 10
```

We then use the key matrix and the message two letters at a time (because this
is the number of columns in the key matrix) at multiply the plaintext letters.
This gives the following computation for the first two letters:

$$
\begin{bmatrix} 9 && 4 \\ 5 && 7 \end{bmatrix} \begin{bmatrix} 12 \\ 4
\end{bmatrix} = \begin{bmatrix}124 \\ 88 \end{bmatrix}
$$

The last step to encode the letters is to modulo the result of this matrix
multiplication by the number pof letters used in our alphabet. In this case,
since the space is also included in the encoding scheme, the result shall have a
modulus of 27.

Therefore, the final value for the encoded letters shall be:

$$
\begin{bmatrix}124 \\ 88 \end{bmatrix}\text{mod}(27) = \begin{bmatrix} 6 \\
7\end{bmatrix}
$$

This encodes the letters to the following cipher message: `qh`.

Following this same procedure for the next two letters give the following:

$$
\begin{bmatrix} 9 && 4 \\ 5 && 7 \end{bmatrix} \begin{bmatrix} 4 \\ 19
\end{bmatrix} \text{mod}(27)= \begin{bmatrix} 112 \\ 153
\end{bmatrix}\text{mod}(27) = \begin{bmatrix} 4 \\ 18\end{bmatrix}
$$

Which encode to the following letters: `es`

This makes the cipher: `qhes` up to this point.

Following this procedure renders the following ciphertext:

`QHESMZFNWZNUZJRA ORXYTSBHLSWFHZPFESEKJXENUJIFEOWBZFH DUSE`

### Response | Part B

Following the same sort of procedure to decypher the text, we can take the
inverse of the key matrix:

$$
\begin{pmatrix} 9 && 4 \\ 5 && 7 \end{pmatrix}^{-1} =
\frac{1}{43}^{-1}\begin{pmatrix} 7 && -4 \\ -5 && 9\end{pmatrix} \text{mod}(27)
=\begin{pmatrix}19 && 20 \\ 25 && 9\end{pmatrix}
$$

Using this inverse matrix, we can then conduct the same operations on the
message to decrypt it.

Doing the first four letters: `QHES` they are index as: `16 7 4 18`

$$
\begin{pmatrix}19 && 20 \\ 25 && 9\end{pmatrix}\begin{pmatrix}6 \\
7\end{pmatrix} \text{mod}(27) =\begin{pmatrix}16 \\ 7 \end{pmatrix}
=\begin{pmatrix}444 \\463\end{pmatrix} \text{mod}(27) =\begin{pmatrix}12 \\
4\end{pmatrix}
$$

This gives the characters: `me`

Doing the same for the following 2 characters:

$$
\begin{pmatrix}19 && 20 \\ 25 && 9\end{pmatrix}\begin{pmatrix}6 \\
7\end{pmatrix} \text{mod}(27) =\begin{pmatrix}4 \\ 18 \end{pmatrix}
=\begin{pmatrix}436 \\262 \end{pmatrix} \text{mod}(27) =\begin{pmatrix}4 \\
19\end{pmatrix}
$$

Now we have the original four plaintext indexed numbers which cna be converted
to the characters `meet` again, continuing the routine allows us to retrieve the
original plaintext message.

## 3.15

We have shown that the Hill cipher succumbs to a known plaintext attack if
sufficient plaintext–ciphertext pairs are provided. It is even easier to solve
the Hill cipher if a chosen plaintext attack can be mounted. Describe such an
attack.

### Response


Consider the matrix $K$ with  elements $K_{ij}$ to consist of the column vectors $K_{j}$ where:

$$K = \begin{bmatrix}
K_{11} && ... && K_{1n} \\
... && ... && ... \\
K_{n1} && ... && K_{nn} \\
\end{bmatrix}$$

and 

$$K = \begin{bmatrix}
K_{1j} \\ ... \\ K_{1n}
\end{bmatrix}$$

The cipher-text of the following chosen plaintext n-grams reveals the columns of $K$:

$$(B, A, A, ..., A, A) \leftrightarrow K_{1}$$
$$(A, B, A, ..., A, A) \leftrightarrow K_{2}$$
$$(A, A, A, ..., A, A) \leftrightarrow K_{n}$$



## 3.20

This problem explores the use of a one-time pad version of the Vigenère cipher.
In this scheme, the key is a stream of random numbers between 0 and 26. For
example, if the key is 3 19 5 . . . , then the first letter of plaintext is
encrypted with a shift of 3 letters, the second with a shift of 19 letters, the
third with a shift of 5 letters, and so on.

- Encrypt the plaintext `sendmoremoney` with the key stream

```
9 0 1 7 23 15 21 14 11 11 2 8 9
```

- Using the ciphertext produced in part (a), find a key so that the cipher text
  decrypts to the plaintext `cashnotneeded`.

### Response

Given the Original Text:

`Plaintext:     s  e n  d m  o  r  e m  o  n  e y`

Take the indices of the letters: 

`Index:         18 4 13 3 12 14 17 4 12 14 13 4 24`

Shift the indices by three.

`Shifting:      21 7 16 6 15 17 21 7 15 17 16 7 1`

Render the cipher-text:

`Cipher-text:   v  h q  g p  r  v  h p  r  q  h b`

`cashnotneeded` has the following indices for the letters:

`2 0 18 7 13 14 19 13 4 4 3 4 3`

We can add the number needed to each index to cet the letters that we want:

(21 + 7)mod26 = 28mod26 = 2, this means that 7 is the first key element.

Following this line of thinking we get the key:

Cipher Letters:         `21 7  16 6 15 17 21 7  15 17 16 7  1`

Key to make decrypt:    `7  19 2  1 24 23 24 6  15 13 13 23 2`

Goal State for Letters: `2  0  18 7 13 14 19 13 4  4  3  4  3`


The key that makes `vhqgprvhprqhb` decrypt to `cashnotneeded` is `7 19 2 1 24 23 24 6 15 13 13 23 2`

