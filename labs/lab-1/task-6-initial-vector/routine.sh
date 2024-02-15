#!/bin/bash
# task 6
# ece 571 routine file containing the 
# scripts used to execute the commands.


# task 6.1
key1=00112233445566778889aabbccddeeff
key2=aabbccddeeff00112233445566778889
iv1=0102030405060708
iv2=0506070801020304

input="words"



# encrypt the file using the same iv and key
openssl enc -aes-128-ofb -e -in ${input} -out ./encrypted-iv1-k1.txt  -K ${key1} -iv ${iv1}

# do part a
openssl enc -aes-128-ofb -e -in ${input} -out ./encrypted-iv1-k2.txt  -K ${key1} -iv ${iv1}

# do part b
openssl enc -aes-128-ofb -e -in ${input} -out ./encrypted-iv2-k2.txt  -K ${key2} -iv ${iv2}

# generate a hexdump of the files.
hexdump ./encrypted-iv1-k1.txt > ./encrypted-iv1-k1.hex
hexdump ./encrypted-iv1-k2.txt > ./encrypted-iv1-k2.hex
hexdump ./encrypted-iv2-k2.txt > ./encrypted-iv2-k2.hex

clear
echo "Diff"
diff ./encrypted-iv1-k1.hex ./encrypted-iv1-k2.hex 
echo "Diff Complete"
# diff ./encrypted-iv1-k1.hex ./encrypted-iv1-k2.hex ./encrypted-iv2-k2.hex

rm *.txt *.hex

# guessing the plain text now, 
# task 6.2


# p1="This is a known message!" 
# c1="a469b1c502c1cab966965e50425438e1bb1b5f9037a4c159"
# c2="bf73bcd3509299d566c35b5d450337e1bb175f903fafc159"

# ./sample_code.py

# task 6.3 

