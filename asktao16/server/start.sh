#!/bin/sh
cd /app/data

cd ./1
./1 &
cd ..
sleep 10

cd ./aaa
./runaaa &
cd ..
sleep 10

cd ./dba
./rundba &
cd ..
sleep 10

cd ./ccs
./runccs &
cd ..
sleep 10

cd ./csa
./runcsa &
cd ..
sleep 10