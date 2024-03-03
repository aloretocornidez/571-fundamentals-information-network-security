# Generate two files that behave differently.


# generate my code.
gcc -o main ./main.c;


# Generate the prefix and suffix
head -c 12352 main > prefix
tail -c +12479 main > suffix

# generate the collision
../md5collgen -p prefix -o out1.bin out2.bin

md5sum out1.bin out2.bin

# store the P and Q
tail -c 128 out1.bin > P
tail -c 128 out2.bin > Q

head -c 288 suffix > suffix_1 
tail -c +416 suffix > suffix_2

cat ./prefix ./P ./suffix_1 ./P ./suffix_2 > a1.out 
cat ./prefix ./Q ./suffix_1 ./P ./suffix_2 > a2.out 
chmod +x a1.out a2.out 

# display the hashes
md5sum a1.out a2.out

echo "a1.out: "
./a1.out 

echo "a2.out: "
./a2.out 



