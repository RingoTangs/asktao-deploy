#!/bin/bash

# 如果 app/data 不存在则创建目录
if [ ! -d "/app/data/.create.d" ]; then
    cp -r /app/temp/* /app/data/
    cd /app/data
    node ./index.js
    touch .create.d
    rm -rf /app/temp/*
fi

/usr/sbin/sshd -D