#!/bin/bash

if [ -e build ];
then
    rm -rf build
fi
mkdir -p build
cd build
cmake ../
make

echo
./Tutorial

echo
echo

for((i=0;i<15;i++))
do
	./Tutorial $i
done
