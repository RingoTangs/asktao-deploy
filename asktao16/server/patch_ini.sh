#!/bin/bash

# 转义特殊字符函数
escape_sed() {
    echo "$1" | sed -e 's/[\/&]/\\&/g'
}

# 读取并转义环境变量
MYSQL_HOST_1=$(escape_sed "${MYSQL_HOST:-127.0.0.1}")
MYSQL_USER_1=$(escape_sed "${MYSQL_USER:-root}")
MYSQL_PASS_1=$(escape_sed "${MYSQL_PASS:-123456}")
AAA_ADDR_1=$(escape_sed "${AAA_ADDR:-127.0.0.1}")

# 配置文件替换函数
# 参数: $1 - 配置文件的完整路径
patch_fn() {
    local config_file="$1"
    
    # 检查是否提供了参数
    if [ -z "$config_file" ]; then
        echo "错误: 请提供配置文件路径作为参数"
        return 1
    fi
    
    # 检查文件是否存在
    if [ ! -f "$config_file" ]; then
        echo "错误: 配置文件 $config_file 不存在!"
        return 1
    fi
    
    # 检查文件是否可写
    if [ ! -w "$config_file" ]; then
        echo "错误: 没有写入权限 $config_file"
        return 1
    fi
    
  
    # 执行替换操作
    sed -i \
      -e "s/{MySQL_HOST}/$MYSQL_HOST_1/g" \
      -e "s/{MySQL_USER}/$MYSQL_USER_1/g" \
      -e "s/{MySQL_PASSWORD}/$MYSQL_PASS_1/g" \
      -e "s/{SERVER_AAA_IP}/$AAA_ADDR_1/g" \
      "$config_file"
}

patch_fn "./aaa/aaa/aaa.ini"
patch_fn "./ccs/ccs/ccs.ini"
patch_fn "./csa/csa/csa.ini"
patch_fn "./dba/dba/dba.ini"

echo "==> 配置文件更新成功!"