#!/usr/bin/env python



def main():

    textToEncode = "Launch a missle."
    encodedText = textToEncode.encode("utf-8")
    hexText = encodedText.hex()
    print(hexText)

    # hexString = "50617373776F72642069732064656573"
    # decodedHexString = bytearray.fromhex(hexString).decode()
    # print(decodedHexString)


if __name__ == "__main__":
    main()
