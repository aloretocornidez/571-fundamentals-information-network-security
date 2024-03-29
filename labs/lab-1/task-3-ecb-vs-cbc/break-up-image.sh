#!/bin/bash 


# A script routine to generated an encrypted image.


# convert image to bmp
# magick Archlinux-icon-crystal-64.png -depth 1 Archlinux-icon-crystal-64.bmp
# openssl enc -aes-128-cfb -e -in ./Archlinux-icon-crystal-64.bmp -out encrypted-image.bmp -K 00112233445566778889aabbccddeeff -iv 0102030405060708
# head -c 54 ./Archlinux-icon-crystal-64.bmp > header 
# tail -c +55 ./encrypted-image.bmp > body 
# cat header body > new-image-with-original-header.bmp

image="pic_original.bmp"
# image="./Archlinux-icon-crystal-64.bmp"

# Encrypt the image contents. 
# openssl enc -aes-128-cfb -e -in ${image} -out encrypted-image.bmp -K 00112233445566778889aabbccddeeff -iv 0102030405060708
openssl enc -aes-128-ecb -e -in ${image} -out encrypted-image.bmp -K 00112233445566778889aabbccddeeff

# get the header of the original image.
head -c 54 ${image} > header 

# get the body of the encrypted image.
tail -c +55 ./encrypted-image.bmp > body 

# Make make the new image.
cat header body > new-image-with-original-header.bmp

# remove the extra files.
rm ./body ./header


