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
## Task 3 | ECB vs CBC
## Task 4 | Padding 

Require Padding: ECB CBC 

Do Not Require Padding: CFB, OFB, CTR



## Task 5 | Error Propagation - Corrupted Cipher Text
## Task 6
