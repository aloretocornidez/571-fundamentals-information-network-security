
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
