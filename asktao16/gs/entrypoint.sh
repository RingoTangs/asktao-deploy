#!/bin/bash

# 如果 app/data 不存在则创建目录
if [ ! -d "/app/data/.create.d" ]; then
    cp -r /app/temp/* /app/data/
    echo "==> 文件拷贝完成"
    cd /app/data
    node /root/index.js
    cp gs.ini ./gs/gs/gs.ini
    chmod 777 -R /app/data
    echo "==> /app/data 目录授权成功"
    touch .create.d
    rm -rf /app/temp/*
    rm -rf ./gs.ini
fi

rm -rf /app/logs/*.log
echo "==> 清除日志"
echo "==> 准备启动服务"
supervisord -c /etc/supervisord.conf