#!/bin/bash
# task 5 
# ece 571 routine file containing the 
# scripts used to execute the commands.


key=00112233445566778889aabbccddeeff
iv=0102030405060708
# Generate the random file. if it doesn't exist.
if [ ! -f ./plaintext.txt ]; then
  head -n 100 /dev/random | strings | sed 's/[ \t]//g' > plaintext.txt
fi

## encrypt the file 
openssl enc -aes-128-cbc -e -in ./plaintext.txt -out ./original-encrypted.txt  -K ${key} -iv ${iv}

# create a backup of the encrypted file.
cp ./original-encrypted.txt ./corrupted-encrypted.txt

# corrupt the file
sed -i '2s/[abcdefghijklmopqrstuvwxyz1234567890]/n/' ./corrupted-encrypted.txt

# decrypt the original encrypted file.
openssl enc -aes-128-cbc -d -in ./original-encrypted.txt -out ./original-decrypted.txt -K ${key} -iv ${iv}

# decrypt the corrupted encrypted file.
openssl enc -aes-128-cbc -d -in ./corrupted-encrypted.txt -out ./corrupted-decrypted.txt -K ${key} -iv ${iv} 

# open the files in bless
bless ./original-encrypted.txt ./corrupted-encrypted.txt ./original-decrypted.txt ./corrupted-decrypted.txt





