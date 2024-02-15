#!/bin/bash
# task 5 
# ece 571 routine file containing the scripts used to execute the commands.


key=00112233445566778889aabbccddeeff
iv=0102030405060708


plaintext="plaintext"
# Generate the random file. if it doesn't exist.
if [ ! -f ${plaintext} ]; then
  head -n 100 /dev/random | strings | sed 's/[ \t]//g' > ${plaintext}
fi

## encrypt the file 
openssl enc -aes-128-cbc -e -in ${plaintext} -out ./original-encrypted.txt  -K ${key} -iv ${iv}

# create a backup of the encrypted file.
cp ./original-encrypted.txt ./corrupted-encrypted.txt

# corrupt the file
sed -i '2s/[abcdefghijklmopqrstuvwxyz1234567890]/n/' ./corrupted-encrypted.txt

# decrypt the original encrypted file.
openssl enc -aes-128-cbc -d -in ./original-encrypted.txt -out ./original-decrypted.txt -K ${key} -iv ${iv}

# decrypt the corrupted encrypted file.
openssl enc -aes-128-cbc -d -in ./corrupted-encrypted.txt -out ./corrupted-decrypted.txt -K ${key} -iv ${iv} 

# generate the hexdumps
hexdump ./corrupted-decrypted.txt > ./corrupted-decrypted.temp
hexdump ./original-decrypted.txt > ./original-decrypted.temp

head -n 15 ./original-decrypted.temp > ./original-decrypted.hex
head -n 15 ./corrupted-decrypted.temp > ./corrupted-decrypted.hex

clear && diff ./corrupted-decrypted.hex ./original-decrypted.hex

rm *.txt *.temp *.hex

