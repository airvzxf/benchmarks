#!/bin/bash


rm -fR nBody.o nBodyCPP build/
mkdir -p build

g++ -O0 nBody.cpp -o ./build/nBodyCPP0
g++ -O1 nBody.cpp -o ./build/nBodyCPP1
g++ -O2 nBody.cpp -o ./build/nBodyCPP2
g++ -O3 nBody.cpp -o ./build/nBodyCPP3
g++ -Ofast nBody.cpp -o ./build/nBodyCPPfast

NUMBER=1000000
echo "nBodyCPP0:"
time ./build/nBodyCPP0 $NUMBER
echo "--------------------------------------------------------"
echo "nBodyCPP1:"
time ./build/nBodyCPP1 $NUMBER
echo "--------------------------------------------------------"
echo "nBodyCPP2:"
time ./build/nBodyCPP2 $NUMBER
echo "--------------------------------------------------------"
echo "nBodyCPP3:"
time ./build/nBodyCPP3 $NUMBER
echo "--------------------------------------------------------"
echo "nBodyCPPfast:"
time ./build/nBodyCPPfast $NUMBER
echo "--------------------------------------------------------"
echo "pypy nBody.py:"
time pypy ./nBody.py $NUMBER
echo "--------------------------------------------------------"
echo "python nBody.py:"
time python ./nBody.py $NUMBER
echo "--------------------------------------------------------"

echo -e "\n"
