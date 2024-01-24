# ECE 571 | Cryptography and Network Security | Homework 1

Name: Alan Manuel Loreto Cornídez

Due Date: January 29th, 2024

## 1.3

Consider a desktop publishing system used to produce documents for various
organizations.

> Give an example of a type of publication for which confidentiality of the
> stored data is the most important requirement.

The reports should only be accessible by people who are authorized to view
aforementioned reports. This means protecting the confidentiality of each report
is important. Only authorized requestors of an organization should have access
to organization's financial report.

> Give an example of a type of publication in which data integrity is the most
> important requirement.

For financial reports, it is important that all of the cash flow statements,
balance sheets, and income statements all have the correct numbers for each of
their values if they want to maintain a non-threated relationship with the IRS.

> Give an example in which system availability is the most important
> requirement.

Any company that works with stock trading would want the data to be available to
them at a moment's notice. This means that the availability of APIs should be
present in addition to resistance from denial of service attacks. This assumes
authorized access.

## 1.4

For each of the following assets, assign a low, moderate, or high impact level
for the loss of confidentiality, availability, and integrity, respectively.
Justify your answers.

> An organization managing public information on its Web server.

**Severity: Low**

- Confidentiality: Information is public, so data confidentiality is not
  present.

- Availability: Information is public, so data availability is not lost.

- Integrity: Information is public, so data integrity is not lost.

> A law enforcement organization managing extremely sensitive investigative
> information.

**Severity: High**

- Confidentiality: Loss of confidentiality will result in possible national
  security concerns. (Depending on the security clearance required for access.)

- Availability: Loss of availability is a national security concern.

- Integrity: Loss of data integrity is a national security concern.

> A financial organization managing routine administrative information (not
> privacy-related information).

**Severity: Moderate**

- Confidentiality: If administrative information is not kept confidential,
  effects from loss of confidentiality will likely result in non-security and
  non-health issues for the members of the organization.

- Availability: Loss of administrative data, while inconvenient for an
  organization, does not cause any national security issues. However, company
  functions may not be able to occur until the data is regenerated.

- Integrity: Loss of data integrity for administrative information does not
  cause national security issues, however, data must still be generated again.

> An information system used for large acquisitions in a contracting
> organization contains both sensitive, pre-solicitation phase contract
> information and routine administrative information. Assess the impact for the
> two data sets separately and the information system as a whole.

- Contract Information **Severity: Moderate**

- Confidentiality: Loss of confidentiality will result in prices for contractors
  being made public.

- Availability: Loss of availability of the data will result in the need to
  reacquire the data.

- Integrity: Loss of data integrity will result in the need to reacquire the
  data. But no security related issues.

- Admin Information **Severity: Moderate**

Justification: Refer to previous part above to the financial organization.

> A power plant contains a SCADA (supervisory control and data acquisition)
> system controlling the distribution of electric power for a large military
> installation. The SCADA system contains both real-time sensor data and routine
> administrative information. Assess the impact for the two data sets separately
> and the information system as a whole.

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

Using the euclidian algorithm:

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

## 3.14

### Response

## 3.15

### Response

## 3.20

### Response
