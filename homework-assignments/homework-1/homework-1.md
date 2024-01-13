# ECE 571 | Cryptography and Network Security | Homework 1

Name: Alan Manuel Loreto Cornídez

Due Date: January 29th, 2024

## 1.3

Consider a financial report publishing system used to produce reports for
various organizations.

- Give an example of a type of publication for which confidentiality of the
  stored data is the most important requirement.
- Give an example of a type of publication in which data integrity is the most
  important requirement.
- Give an example in which system availability is the most important
  requirement.

### Response

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

### Response

> A student maintaining a blog to post public information.

**Severity: Low**

- Confidentiality: Information is public, so no risk is present.
- Availability: Information is public, so no risk is present.
- Integrity: Information is public, so no risk is present.

> An examination section of a university that is managing sensitive information
> about exam papers.

**Severity: Moderate**

- Confidentiality: Students' grades being made available is a moderate risk due
  to confidentiality laws, however, no one is put in immediate danger.
- Availability: Students may have to retake an exam, so the data availability is
  lost but can be regenerated.
- Integrity: The integrity of the information is important in order to ensure
  that the students are fairly passing their course work, however, no one is put
  in immediate danger if the data is not maliciously changed.

> An information system in a pathological laboratory maintaining the patient’s
> data.

**Severity: High**

- Confidentiality: Confidentiality of medical records are protected by the law,
  so the loss of that confidentiality is high risk.
- Availability: If the data is lost then patients will not have access to their
  vital medical records.
- Integrity: Integrity of medical information is important to make sure that
  medical procedures are followed correctly for each patient.

> A student information system used for maintaining student data in a university
> that contains both personal, academic information and routine administrative
> information (not privacy related). Assess the impact for the two data sets
> separately and the information system as a whole.

Severity: Moderate

Academic Information

- Confidentiality: Grades should not be available to unauthorized parties. Allowing unauthorized access to student academic records violates american laws.
- Availability: 
- Integrity

Administrative Information

- Confidentiality
- Availability
- Integrity

> A university library contains a library management system, which controls the
> distribution of books among the students of various departments. The library
> management system contains both the student data and the book data. Assess the
> impact for the two data sets separately and the information system as a whole.

- Confidentiality
- Availability
- Integrity

## 2.10

Find the multiplicative inverse of each nonzero element in $Z_{5}$.

### Response

## 2.12

- Determine gcd(72345, 43215)
- Determine gcd(3486, 10292)

### Response

## 2.16(c)

Using the extended Euclidean algorithm, find the multiplicative inverse of

- 42828 mod 6407.

### Response

## 2.26

Prove the following:

If $p$ is prime, then $f(p^{i}) = p^{i} - p^{i - 1}$.

Hint: What numbers have a factor in common with pi?

### Response

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

### Response

## 3.14

Encrypt the message "meet me at the usual place at ten rather than eight o
clock" using the Hill cipher with the key

$$\begin{pmatrix} 7 && 3 \\ 2 && 5 \end{pmatrix} $$

- Show your calculations and the result.

- Show the calculations for the corresponding decryption of the ciphertext to
  recover the original plaintext.

### Response

## 3.15

We have shown that the Hill cipher succumbs to a known plaintext attack if
sufficient plaintext–ciphertext pairs are provided. It is even easier to solve
the Hill cipher if a chosen plaintext attack can be mounted. Describe such an
attack.

### Response

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

### Response
