#!/bin/bash
Cur_Dir=$(pwd)
echo $Cur_Dir

if [ ! -d "/build/" ];then
  mkdir ./build
else
  echo "build file exists"
fi

if [ ! -d "/install/" ];then
  mkdir ./install
else
  echo "install file exists"    
fi

cd $Cur_Dir/build

echo "remove history files"
rm -rfv ./*
rm -rfv ../install/cpp_demo

cmake ..

make -j8

wait
exit 0
