#!/usr/bin/python3


# XOR two bytearrays
def xor(first, second):
    return bytearray(x ^ y for x, y in zip(first, second))


message = "b36ecfe90769ed003c7b9e737afc6bd5"
known_IV = "4bc47bfe6f3b0222001a5acfc4b3e927"
known_next_IV = "97593e57703b0222001a5acfc4b3e927"


def main():

    # Convert ascii string to bytearray

    # MSG = input("What is your hex string?\n")
    d1 = bytes(message, "utf-8")

    # Convert hex string to bytearray
    d2 = bytearray.fromhex(known_IV)
    d3 = bytearray.fromhex(known_next_IV)

    r1 = xor(d1, d2)  # generate keystream
    r2 = xor(d2, d3)
    r3 = xor(d2, d2)

    print(r1.hex())  # print the keysream.
    print(r2.hex())
    print(r3.hex())

    actualString = xor(r1, d3).decode()  # generate original text.
    print(actualString)  # print original text.


if __name__ == "__main__":
    main()
