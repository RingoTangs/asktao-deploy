FROM centos:centos7.9.2009

LABEL maintainer="RingoTangs"
LABEL version="1.0"
LABEL description="Base image for AskTao 1.6 game server"

# 替换基础源
RUN rm -rf /etc/yum.repos.d/*.repo
COPY ./CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo

# 安装依赖并清理缓存
RUN yum clean all && \
    yum makecache && \
    yum update -y && \
    yum install -y \
        vim-minimal \
        glibc.i686 \
        libstdc++.i686 \
        tzdata

# 安装 python3.6.8      
RUN yum install -y python3
# 更新 pip
RUN python3 -m pip install --upgrade pip
# 安装 supervisor
RUN python3 -m pip install supervisor

# 设置时区为Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone