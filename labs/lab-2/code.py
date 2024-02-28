# from Crypto import Random
from Crypto.Cipher import AES
# from Crypto import AES

file = open("keys.txt", "r")
ciphertext = "d06bf9d0dab8e8ef880660d2af65aa82"
for i in range(0, 7200):
    str = file.readline()
    key = bytes.fromhex(str[:-1])
    IV = bytes.fromhex("09080706050403020100A2B2C2D2E2F2".lower())
    plaintext1 = bytes.fromhex("255044462d312e350a25d0d4c5d80a34")
    cipher = AES.new(key, AES.MODE_CBC, IV)
    encrypted = cipher.encrypt(plaintext1)
    if ciphertext == encrypted.hex()[0:32]:
        print("")
        print("Match found")
        print("key: " + str[:-1])
        print("CipherText: " + ciphertext)
        print("Encrypted : " + encrypted.hex())
        print("")
