#!/bin/sh
cd /app/data

cd ./1
./1 &

sleep 10

cd /app/data
cd ./gs
./rungs &