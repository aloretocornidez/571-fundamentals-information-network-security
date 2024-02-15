#!/bin/bash

# Create the files
echo -n "12345" > f1.txt 
echo -n "123456789a" > f2.txt 
echo -n "123456789abcdefg" > f3.txt 

# Encrypt the files.
openssl enc -aes-128-cbc -e -in ./f1.txt -out ./5-bytes.txt  -K 00112233445566778889aabbccddeeff -iv 0102030405060708
openssl enc -aes-128-cbc -e -in ./f2.txt -out ./10-bytes.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708
openssl enc -aes-128-cbc -e -in ./f3.txt -out ./16-bytes.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708

# Decrypt the files.
openssl enc -aes-128-cbc -d -in ./5-bytes.txt  -out ./p1.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708
openssl enc -aes-128-cbc -d -in ./10-bytes.txt -out ./p2.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708
openssl enc -aes-128-cbc -d -in ./16-bytes.txt -out ./p3.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708

# Decrypt the files using no pad
openssl enc -aes-128-cbc -d -nopad -in ./5-bytes.txt  -out ./p1-no-pad.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708
openssl enc -aes-128-cbc -d -nopad -in ./10-bytes.txt -out ./p2-no-pad.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708
openssl enc -aes-128-cbc -d -nopad -in ./16-bytes.txt -out ./p3-no-pad.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708


# display the pad and nopad versios of the hexdump
output="padding-display"
filenames=("p1" "p2" "p3")

# empty file
echo -n "" > ${output}

# dump the hex contents into a file.
for file  in ${filenames[@]}; do
  echo "${file} padding" >> ${output}
  hexdump -C ./${file}.txt >> ${output}
  echo "${file} no padding" >> ${output}
  hexdump -C ./${file}-no-pad.txt >> ${output}
  echo  >> ${output}
done

# display the padding
clear && cat ${output}

# remove extranous files.
rm *.txt ${output}

