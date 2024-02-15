# ECE 571 | Fundamentals of Cryptography and Network Security | Lab 1

Name: Alan Manuel Loreto Cornídez

Date: 02/11/2024

# Report

Given an encrypted text file, the task at hand for Lab 1: Task 1 was to decrypt
it using frequency analysis.

## Task 1 
### Encrypted File

Below is an excerpt of the encrypted text file:

```
qmruvimur ytnmh qzeexhy rxipnu rixgnq vyynupnnq qlvytnp ytncqnifnq mu givas
qexhynp iveni emuq vup qxzupnp xbb vgxzy qnkmqy exlnh mcgvivuanq bhxc ytn hnp
avheny vup ytn qyvrn xu ytn vmh n lvq aviinp xzy vgxzy evd munjzmyd vbynh
myq bxhcnh vuatxh avyy qvpinh jzmy xuan qtn invhunp ytvy qtn lvq cvsmur bvh
inqq ytvu v cvin axtxqy vup pzhmur ytn anhncxud uvyvimn exhycvu yxxs v gizuy
vup qvymqbdmur pmr vy ytn viicvin hxqynh xb uxcmuvynp pmhnayxhq txl axzip
ytvy gn yxeenp
```

---

### Performing Frequency Analysis on the Input

The first task to perform frequency analysis is checking the most common
occurring letters, bigrams and trigrams. This analysis can be performed on the
encrypted text by running the following python script (provided by the creator
of this lab assignment). This script just calculates and prints the n-grams
contained in a file input stream.

```python
# Generate all the n-grams for value n
def ngrams(n, text):
    for i in range(len(text) -n + 1):
        # Ignore n-grams containing white space
        if not re.search(r'\s', text[i:i+n]):
           yield text[i:i+n]

# Read the data from the ciphertext
with open('ciphertext.txt') as f:
    text = f.read()

# Count, sort, and print out the n-grams
for N in range(N_GRAM):
   print("-------------------------------------")
   print("{}-gram (top {}):".format(N+1, TOP_K))
   counts = Counter(ngrams(N+1, text))        # Count
   sorted_counts = counts.most_common(TOP_K)  # Sort
   for ngram, count in sorted_counts:
       print("{}: {}".format(ngram, count))   # Print
```

---

Running this analysis on the encrypted text gives the following output:

```
-------------------------------------
1-gram (top 5):
n: 488
y: 373
v: 348
x: 291
u: 280
-------------------------------------
2-gram (top 5):
yt: 115
tn: 89
mu: 74
nh: 58
vh: 57
-------------------------------------
3-gram (top 5):
ytn: 78
vup: 30
mur: 20
ynh: 18
xzy: 16
```

---

From this information, we can then take the most common characters, bigrams and
trigrams in the english language and make some informed hypotheses for the
plausible substitutions.

Below is a list of the most common
[bigrams](https://en.wikipedia.org/wiki/Bigram#Bigram_frequency_in_the_English_language),
and [trigrams](https://en.wikipedia.org/wiki/Trigram#Frequency) in the english
language. We can assume that vowels are fairly common relative to non-vowels.

Bigrams:

```
th 3.56%
he 3.07%
in 2.43%
er 2.05%
an 1.99%
```

Trigrams:

```
the 	1.81%
and 	0.73%
tha 	0.33%
ent 	0.42%
ing 	0.72%
```

---

By combining the fact that the most common bigram is `th` and the most common
trigram is `the`, we can begin replacing the characters in the encrypted text
file.

### Character Substitution Using the `tr` Command

To substitute the letters in a quick way, we can use the `tr` utility. The `tr`
utility allows the translation or deletion of characters in a given input
stream.

In this case, we can use a simple bash script that contains a cipher and a key
and pipe the input file through the `tr` utility.

Here is the initial bash command used to replace the lowercase encrypted `ytn`
to an uppercase plaintext `THE`.

```bash
tr 'ytn' 'THE' < in.txt  > out.txt
```

From this command we can turn the previously shown except from:

---

```
qmruvimur ytnmh qzeexhy rxipnu rixgnq vyynupnnq qlvytnp ytncqnifnq mu givas
qexhynp iveni emuq vup qxzupnp xbb vgxzy qnkmqy exlnh mcgvivuanq bhxc ytn hnp
avheny vup ytn qyvrn xu ytn vmh n lvq aviinp xzy vgxzy evd munjzmyd vbynh
myq bxhcnh vuatxh avyy qvpinh jzmy xuan qtn invhunp ytvy qtn lvq cvsmur bvh
inqq ytvu v cvin axtxqy vup pzhmur ytn anhncxud uvyvimn exhycvu yxxs v gizuy
vup qvymqbdmur pmr vy ytn viicvin hxqynh xb uxcmuvynp pmhnayxhq txl axzip
ytvy gn yxeenp
```

To:

```
qmruvimur THEmh qzeexhT rxipEu rixgEq vTTEupEEq qlvTHEp THEcqEifEq mu givas
qexhTEp iveEi emuq vup qxzupEp xbb vgxzT qEkmqT exlEh mcgvivuaEq bhxc THE hEp
avheET vup THE qTvrE xu THE vmh E lvq aviiEp xzT vgxzT evd muEjzmTd vbTEh
mTq bxhcEh vuaHxh avTT qvpiEh jzmT xuaE qHE iEvhuEp THvT qHE lvq cvsmur bvh
iEqq THvu v cviE axHxqT vup pzhmur THE aEhEcxud uvTvimE exhTcvu Txxs v gizuT
vup qvTmqbdmur pmr vT THE viicviE hxqTEh xb uxcmuvTEp pmhEaTxhq Hxl axzip
THvT gE TxeeEp
```

---

From here, we can see that some of the words are actually transformed to "THE".
We can continue to analyze the text and begin to look for additional
substitutions to approach our plaintext. Continuing the pattern of entering
educated guesses it is possible to decipher more of the text:

```bash
tr 'ytnvupm' 'THEANDI' < in.txt > out.txt
```

Renders the following:

---

```
qIrNAiINr THEIh qzeexhT rxiDEN rixgEq ATTENDEEq qlATHED THEcqEifEq IN giAas
qexhTED iAeEi eINq AND qxzNDED xbb AgxzT qEkIqT exlEh IcgAiANaEq bhxc THE hED
aAheET AND THE qTArE xN THE AIh E lAq aAiiED xzT AgxzT eAd INEjzITd AbTEh
ITq bxhcEh ANaHxh aATT qADiEh jzIT xNaE qHE iEAhNED THAT qHE lAq cAsINr bAh
iEqq THAN A cAiE axHxqT AND DzhINr THE aEhEcxNd NATAiIE exhTcAN Txxs A gizNT
AND qATIqbdINr DIr AT THE AiicAiE hxqTEh xb NxcINATED DIhEaTxhq Hxl axziD
THAT gE TxeeED
```

---

Continuing that same approach to completion renders the `tr` command that
contains the following cipher/key solution:

```bash
tr 'ytnvupmsqxlichbzadgrjefokw' 'THEANDIKSOWLMRFUCYBGQPVJXC' < in.txt  > out.txt
```

Which renders the following plaintext:

```
SIGNALING THEIR SUPPORT GOLDEN GLOBES ATTENDEES SWATHED THEMSELVES IN BLACK
SPORTED LAPEL PINS AND SOUNDED OFF ABOUT SEXIST POWER IMBALANCES FROM THE RED
CARPET AND THE STAGE ON THE AIR E WAS CALLED OUT ABOUT PAY INEQUITY AFTER
ITS FORMER ANCHOR CATT SADLER QUIT ONCE SHE LEARNED THAT SHE WAS MAKING FAR
LESS THAN A MALE COHOST AND DURING THE CEREMONY NATALIE PORTMAN TOOK A BLUNT
AND SATISFYING DIG AT THE ALLMALE ROSTER OF NOMINATED DIRECTORS HOW COULD
THAT BE TOPPED
```

---

The cipher and key can then be sorted to make it look nicer:


```
cipher: 'abcdefghijklmnopqrstuvwxyz'
key:    'CFMYPVBRLQXWIEJDSGKHNACOTU'
```


### Interesting Observations and Summary

When completing this assignment there were points that I had to backtrack
because I had incorrectly assigned a substitution to a character that was
faulty. However, thanks to having the ability to check my attempts in quick
succession, this did not slow down my progress by a large margin. However, I can
image that before computers were able to automate this substitution the
crypto-analyst had to be very careful with the substitutions they made when
breaking a cipher of this sort lest they face the agonizing pain of re-writing
the cipher with their new substitution attempt.

All in all, this lab was very fun. All of the commands were able to be run on my
computer as the commands used are part of the GNU utilities. To aid in my
completion of this assignment I made a backup of the text file and used output
redirection to a file `>` and `<`. This allowed me to test multiple attempts
quickly.







## Task 2 | Ciphers and Modes
Running the following commands we are able to encrypt the plaintext:

```sh

key="00112233445566778889aabbccddeeff"
iv="0102030405060708"


# create and save the files
openssl enc -aria-256-cbc -e -in plain.txt -out cipher.bin -K ${key} -iv ${iv} 
mv cipher.bin aria-256-cbc-cipher.bin

openssl enc -aes-128-cbc -e -in plain.txt -out cipher.bin -K ${key} -iv ${iv} 
mv cipher.bin aes-128-cbc-cipher.bin

openssl enc -aes-128-cfb -e -in plain.txt -out cipher.bin -K ${key} -iv ${iv} 
mv cipher.bin aes-128-cfb-cipher.bin


# create a hexdump.
 hexdump aes-128-cbc-cipher.bin >> aes-128-cbc-cipher.hex
 hexdump aes-128-cfb-cipher.bin >> aes-128-cfb-cipher.hex
 hexdump aria-256-cbc-cipher.bin >> aria-256-cbc-cipher.hex


```

That gives the following three hexdumps (only the first 5 dumps are shown): 

```
# aes-128-cbc
0000000 0f3f d165 ae09 7199 a242 7bc6 e87b 9c32
0000010 e52e 914e d6eb 0773 38fd 40c8 a3fd d965
0000020 63fe 4752 1597 0239 8a53 9dbe 2256 6e36
0000030 f1aa b697 b3ca 043e 220d e1a4 c5ca 08ea
0000040 5397 c586 bd0b c9e6 21de 3356 c8bf 2eb1

# aria-256-cbc
0000000 9ef2 47be 0a01 c090 b466 5e7b 1df8 ffa7
0000010 173c 6f35 62f4 25d4 dbf5 d690 5a1c 11f5
0000020 4764 ae1d 5615 8779 b23b bdc5 d132 0a66
0000030 0864 98e8 2f57 ba97 9a72 8c7f 6945 6a0b
0000040 3d6c 272c a991 916c 243b d06c 3626 e8eb

# aes-128-cfb
0000000 eef3 05ea 4cae b0d9 eddd 699f 6200 4d32
0000010 36ef 8bed 6ea6 5eaf fc9d d7bd 3223 4ab6
0000020 c60e c1cd f812 d12c 83d4 0f0c 74f7 d429
0000030 f6dd 0481 8353 2de2 8140 278a 1c4a c435
0000040 dd36 b9a9 79b7 d950 00d4 9503 fb09 d195

```


## Task 3 | ECB vs CBC

### ECB Mode
When encrypting the image using ECB encoding with the following commands, (no need for an initialization vector):

```sh
# Encrypt the image contents. 
openssl enc -aes-128-ecb -e -in pic_original.bmp -out encrypted-image.bmp -K 00112233445566778889aabbccddeeff

# get the header of the original image.
head -c 54 ./pic_original.bmp > header 

# get the body of the encrypted image.
tail -c +55 ./encrypted-image.bmp > body 

# Make make the new image.
cat header body > new-image-with-original-header.bmp

```

We get the following image:

![[task-3-ecb-vs-cbc/new-image-with-original-header.bmp]]

### CFB Mode
However, when using CFB encryption, using the following script:

```sh
# Encrypt the image contents. 
openssl enc -aes-128-cfb -e -in pic_original.bmp -out encrypted-image.bmp -K 00112233445566778889aabbccddeeff -iv 0102030405060708
# openssl enc -aes-128-ecb -e -in pic_original.bmp -out encrypted-image.bmp -K 00112233445566778889aabbccddeeff

# get the header of the original image.
head -c 54 ./pic_original.bmp > header 

# get the body of the encrypted image.
tail -c +55 ./encrypted-image.bmp > body 

# Make make the new image.
cat header body > new-image-with-original-header.bmp
```

We get the following image:

![[task-3-ecb-vs-cbc/new-image-with-original-header.bmp]]

As we can see, when the image being used has a low frequency measurement, the encryption does not work as well when using ECB mode encryption. 

### Personal Image

When using a personal image, this is also the case with both ECB and CFB modes.

Original:
![[task-3-ecb-vs-cbc/Archlinux-icon-crystal-64.bmp]]

ECB Mode: 
![[Pasted image 20240214214717.png]]

CFB Mode:
![[Pasted image 20240214214800.png]]

## Task 4 | Padding 

The ECB mode does not require padding because there is no feedback from previously encrypted blocks in the encryption process.

Do Not Require Padding: CFB, OFB, CTR


## Task 5 | Error Propagation - Corrupted Cipher Text
## Task 6
