#!/bin/bash


# initialize variables to test.
plaintext="255044462d312e350a25d0d4c5d80a34"
ciphertext="d06bf9d0dab8e8ef880660d2af65aa82"
initVector="09080706050403020100A2B2C2D2E2F2"


startTime=$(date -d "2018-04-17 19:08:49" +%s)
endTime=$(date -d "2018-04-18 02:08:49" +%s)


# test=$(echo -n ${plaintext} | xxd -r -p | openssl enc -aes-128-cbc -nopad -e -K ${key} -iv ${initVector} -nosalt | xxd -p)

# echo $test 
# echo $ciphertext

echo -n "" > output.txt 
# loop through each possible start time 
for time in $(seq $startTime $endTime); do 

  # generate the key from the given time.
  key=$(./main ${time})
  
  # echo ${key}

  # generate the cipher text from the generated key
  echo -n `echo -n ${plaintext} | xxd -r -p | openssl enc -aes-128-cbc -nopad -e -K ${key} -iv ${initVector} -nosalt | xxd -p` >> output.txt; echo " Key: ${key} Time: ${time}" >> output.txt

done

grep -i "${ciphertext}" output.txt
