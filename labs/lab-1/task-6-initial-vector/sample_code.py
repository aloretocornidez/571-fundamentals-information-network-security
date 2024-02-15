#!/usr/bin/python3


# XOR two bytearrays
def xor(first, second):
    return bytearray(x ^ y for x, y in zip(first, second))


MSG = "This is a known message!"
HEX_1 = "a469b1c502c1cab966965e50425438e1bb1b5f9037a4c159"
HEX_2 = "bf73bcd3509299d566c35b5d450337e1bb175f903fafc159"


def main():

    # Convert ascii string to bytearray
    D1 = bytes(MSG, "utf-8")

    # Convert hex string to bytearray
    D2 = bytearray.fromhex(HEX_1)
    D3 = bytearray.fromhex(HEX_2)

    r1 = xor(D1, D2)  # generate keystream

    actualString = xor(r1, D3).decode()  # generate original text.
    print(actualString)  # print original text.


if __name__ == "__main__":
    main()
