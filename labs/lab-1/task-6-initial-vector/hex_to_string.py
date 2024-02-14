#!/usr/bin/python3


# XOR two bytearrays
def xor(first, second):
    return bytearray(x ^ y for x, y in zip(first, second))


message = "1234"
known_hex1 = "b2d470107bb6fa446fac94e767a060af"
known_hex2 = "657b163e72156cdf748b23965f071dd7"


def main():

    # Convert ascii string to bytearray

    # MSG = input("What is your hex string?\n")
    known_plaintext = bytes(message, "utf-8")

    # Convert hex string to bytearray
    known_cipher = bytearray.fromhex(known_hex1)
    unknown_cipher = bytearray.fromhex(known_hex2)

    r1 = xor(known_plaintext, known_cipher)  # generate keystream
    r2 = xor(known_cipher, unknown_cipher)
    r3 = xor(known_cipher, known_cipher)

    print(r1.hex())  # print the keysream.
    print(r2.hex())
    print(r3.hex())

    actualString = xor(r1, unknown_cipher).decode()  # generate original text.
    print(actualString)  # print original text.


if __name__ == "__main__":
    main()
