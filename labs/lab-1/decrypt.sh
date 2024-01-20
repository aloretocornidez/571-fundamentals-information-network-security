#!/bin/bash
# decrypt.sh
# Author: Alan Manuel Loreto Cornidez

## This is the ordiginal order in which I was able to find the cipher to plaintext conversions.
# cipher='ytnvupmsqxlichbzadgrjefokw'
# plaintext='THEANDIKSOWLMRFUCYBGQPVJXC'

cipher='abcdefghijklmnopqrstuvwxyz'
plaintext='CFMYPVBRLQXWIEJDSGKHNACOTU'


tr $cipher $plaintext < in.txt > out.txt



