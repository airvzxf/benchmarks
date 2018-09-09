#!/bin/bash


rm -fR string.o stringCPP build/
mkdir -p build

g++ -O0 string.cpp -o ./build/stringCPP0
g++ -O1 string.cpp -o ./build/stringCPP1
g++ -O2 string.cpp -o ./build/stringCPP2
g++ -O3 string.cpp -o ./build/stringCPP3
g++ -Ofast string.cpp -o ./build/stringCPPfast

echo "stringCPP0:"
time ./build/stringCPP0
echo "--------------------------------------------------------"
echo "stringCPP1:"
time ./build/stringCPP1
echo "--------------------------------------------------------"
echo "stringCPP2:"
time ./build/stringCPP2
echo "--------------------------------------------------------"
echo "stringCPP3:"
time ./build/stringCPP3
echo "--------------------------------------------------------"
echo "stringCPPfast:"
time ./build/stringCPPfast
echo "--------------------------------------------------------"
echo "pypy string.py:"
time pypy ./string.py
echo "--------------------------------------------------------"
echo -e "\n"
