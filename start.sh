#!/bin/bash
Cur_Dir=$(pwd)
echo $Cur_Dir

cd $Cur_Dir/install
./cpp_demo
sleep 0.5

wait
exit 0
