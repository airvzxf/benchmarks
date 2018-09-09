#!/bin/bash


rm -fR *.o *.lst build/
mkdir -p build

g++ -O0 sumsAllNumbers.cpp -o ./build/sumsAllNumbersCPP0
g++ -O1 sumsAllNumbers.cpp -o ./build/sumsAllNumbersCPP1
g++ -O2 sumsAllNumbers.cpp -o ./build/sumsAllNumbersCPP2
g++ -O3 sumsAllNumbers.cpp -o ./build/sumsAllNumbersCPP3
g++ -Ofast sumsAllNumbers.cpp -o ./build/sumsAllNumbersCPPfast

nasm -f elf64 sumsAllNumbers.asm -o ./build/sumsAllNumbers.o
ld -s -o ./build/sumsAllNumbersASM ./build/sumsAllNumbers.o


#~ echo "sumsAllNumbersCPP0:"
#~ time ./build/sumsAllNumbersCPP0
#~ echo "--------------------------------------------------------"
#~ echo "sumsAllNumbersCPP1:"
#~ time ./build/sumsAllNumbersCPP1
#~ echo "--------------------------------------------------------"
#~ echo "sumsAllNumbersCPP2:"
#~ time ./build/sumsAllNumbersCPP2
#~ echo "--------------------------------------------------------"
#~ echo "sumsAllNumbersCPP3:"
#~ time ./build/sumsAllNumbersCPP3
#~ echo "--------------------------------------------------------"
echo "sumsAllNumbersCPPfast:"
time ./build/sumsAllNumbersCPPfast
echo "--------------------------------------------------------"

echo "sumsAllNumbersASM:"
time ./build/sumsAllNumbersASM
echo "--------------------------------------------------------"

echo "pypy sumsAllNumbers.py:"
time pypy ./sumsAllNumbers.py
echo "--------------------------------------------------------"
echo "pypy sumsAllNumbersOptimized.py:"
time pypy ./sumsAllNumbersOptimized.py
echo "--------------------------------------------------------"

#~ echo "python2.7 sumsAllNumbers.py:"
#~ time python2.7 ./sumsAllNumbers.py
#~ echo "--------------------------------------------------------"
#~ echo "python2.7 sumsAllNumbersOptimized.py:"
#~ time python2.7 ./sumsAllNumbersOptimized.py
#~ echo "--------------------------------------------------------"

#~ echo "python3.5 sumsAllNumbers.py:"
#~ time python3.5 ./sumsAllNumbers.py
#~ echo "--------------------------------------------------------"
echo "python3.5 sumsAllNumbersOptimized.py:"
time python3.5 ./sumsAllNumbersOptimized.py
echo "--------------------------------------------------------"

echo "swift sumsAllNumbers.swift:"
time swift ./sumsAllNumbers.swift
echo "--------------------------------------------------------"

echo -e "\n"
