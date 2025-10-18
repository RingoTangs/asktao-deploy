#!/bin/bash

cd ./1
./1 &
cd ..

sleep 5
cd ./aaa
./runaaa &
cd ..

sleep 5
cd ./dba
./rundba &
cd ..

sleep 5
cd ./ccs
./runccs &
cd ..

sleep 5
cd ./csa
./runcsa &