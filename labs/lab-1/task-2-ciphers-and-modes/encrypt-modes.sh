openssl enc -aria-256-cbc -e -in plain.txt -out cipher.bin -K 00112233445566778889aabbccddeeff -iv 0102030405060708
mv cipher.bin aria-256-cbc-cipher.bin

openssl enc -aes-128-cbc -e -in plain.txt -out cipher.bin -K 00112233445566778889aabbccddeeff -iv 0102030405060708
mv cipher.bin aes-128-cbc-cipher.bin

openssl enc -aes-128-cfb -e -in plain.txt -out cipher.bin -K 00112233445566778889aabbccddeeff -iv 0102030405060708
mv cipher.bin aes-128-cfb-cipher.bin
