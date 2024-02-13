#!/bin/bash
# task 5 
# ece 571 routine file containing the 
# scripts used to execute the commands.



# Generate the random file.
head -n 100 /dev/random | strings | sed 's/[ \t]//g' > plaintext.txt

## encrypt the file 
openssl enc -aes-128-cbc -e -in ./plaintext.txt -out ./original-encrypted.txt  -K 00112233445566778889aabbccddeeff -iv 0102030405060708

# create a backup of the encrypted file.
cp ./original-encrypted.txt ./corrupted-encrypted.txt

# corrupt the file
sed -i '2s/[abcdefghijklmopqrstuvwxyz1234567890]/n/' ./corrupted-encrypted.txt

# decrypt the original encrypted file.
openssl enc -aes-128-cbc -d -in ./original-encrypted.txt -out ./original-decrypted.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708

# decrypt the corrupted encrypted file.
openssl enc -aes-128-cbc -d -in ./corrupted-encrypted.txt -out ./corrupted-decrypted.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708


