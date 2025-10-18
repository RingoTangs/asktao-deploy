#!/bin/bash

# 如果 app/data 不存在则创建目录
if [ ! -d "/app/data/.create.d" ]; then
    cp -r /app/temp/* /app/data/
    cd /app/data
    touch .create.d
    ./patch.sh
    rm -rf /app/temp/*
fi

cd /app/data
./run.sh