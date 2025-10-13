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
        vim \
        lsof \
        unzip \
        net-tools \
        glibc.i686 \
        libstdc++.i686 \
        tzdata \
        openssh-server \
        openssh-clients



RUN ssh-keygen -A

# 设置 root 密码
RUN echo "root:123456" | chpasswd

# 允许 root 通过 SSH 登录
RUN sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

EXPOSE 22    

# 设置时区为Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

# 安装 nodejs
WORKDIR /root
COPY ./node-v16.20.2-linux-x64.tar.xz ./node-v16.20.2-linux-x64.tar.xz
RUN tar -xvJf node-v16.20.2-linux-x64.tar.xz
RUN mv ./node-v16.20.2-linux-x64/ /usr/local/nodejs/
RUN ln -sf /usr/local/nodejs/bin/node /usr/local/bin/node && \
    ln -sf /usr/local/nodejs/bin/npm /usr/local/bin/npm && \
    ln -sf /usr/local/nodejs/bin/npx /usr/local/bin/npx
RUN rm -rf ./node-v16.20.2-linux-x64.tar.xz
RUN node -v

# 启动 SSH 服务
CMD ["/usr/sbin/sshd", "-D"]