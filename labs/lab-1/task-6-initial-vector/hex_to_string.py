#!/usr/bin/python3


# XOR two bytearrays
def xor(first, second):
    return bytearray(x ^ y for x, y in zip(first, second))


def generateGuessOutput():

    yes = bytes("Yes", "utf-8").hex()  # get the hex representation of yes
    no = bytes("No", "utf-8").hex()  # get the hex representation of no
    # print the hex values from the ascii strings.
    print(f"Yes: {yes}")  # 5965730d0d0d0d0d0d0d0d0d0d0d0d0d
    print(f"No: {no}")    # 4e6f0e0e0e0e0e0e0e0e0e0e0e0e0e0e


def main():

    # insert the guess here. this is gotten from the generateGuessOutput() function.
    p1 = bytearray.fromhex("5965730d0d0d0d0d0d0d0d0d0d0d0d0d")  # yes
    p1 = bytearray.fromhex("4e6f0e0e0e0e0e0e0e0e0e0e0e0e0e0e")  # no

    cipher_text = "44263c5a9b3beba7a6dc27c680012442"
    iv1 = "1500558349a3a094df01cb2c8e4dd1fe"
    iv2 = "63cf978b49a3a094df01cb2c8e4dd1fe"  # insert the next IV here.

    iv1 = bytearray.fromhex(iv1)  # get the byte array
    iv2 = bytearray.fromhex(iv2)  # get the byte array

    p2 = xor(xor(iv1, iv2), p1)

    print(f"Next Plaintext: {p2.hex()}")


if __name__ == "__main__":
    main()
