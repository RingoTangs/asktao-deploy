FROM asktao16-base:1.0

LABEL maintainer="RingoTangs"
LABEL version="1.0"
LABEL description="Asktao 1.6 gs server"

ENV SERVER_NAME="仙侣情缘一线"
ENV AAA_ADDR = "127.0.0.1"

COPY ./supervisord.conf /etc/supervisord.conf

# 创建目录
RUN mkdir -p /app/logs && \
    mkdir -p /app/data

# nodejs
WORKDIR /root
COPY ./jscode/dist/index.js ./index.js
COPY ./node-v16.20.2-linux-x64.tar.xz ./node-v16.20.2-linux-x64.tar.xz
RUN tar -xvJf node-v16.20.2-linux-x64.tar.xz
RUN mv ./node-v16.20.2-linux-x64/ /usr/local/nodejs/
RUN ln -sf /usr/local/nodejs/bin/node /usr/local/bin/node && \
    ln -sf /usr/local/nodejs/bin/npm /usr/local/bin/npm && \
    ln -sf /usr/local/nodejs/bin/npx /usr/local/bin/npx
RUN rm -rf ./node-v16.20.2-linux-x64.tar.xz
RUN node -v

# 拷贝游戏文件
WORKDIR /app/temp
COPY ./1/ ./1/
COPY ./gs/ ./gs/
COPY ./starts/ ./starts/
COPY ./start.sh ./start.sh

WORKDIR /root
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod 777 entrypoint.sh

CMD [ "/bin/bash", "entrypoint.sh" ]
