FROM asktao16-base:1.0

LABEL maintainer="RingoTangs"
LABEL version="1.0"
LABEL description="Asktao 1.6 main server"

ENV MYSQL_HOST="127.0.0.1"
ENV MYSQL_USER="gameuser"
ENV MYSQL_PASS="123456"
ENV AAA_ADDR = "127.0.0.1"

COPY ./supervisord.conf /etc/supervisord.conf

# 创建目录
RUN mkdir -p /app/logs && \
    mkdir -p /app/data

# 临时目录
WORKDIR /app/temp

COPY ./1/ ./1/
COPY ./aaa/ ./aaa/
COPY ./ccs/ ./ccs/
COPY ./csa/ ./csa/
COPY ./dba/ ./dba/
COPY ./patch_ini.sh ./patch_ini.sh
COPY ./starts/ ./starts/
COPY ./start.sh ./start.sh

# 应用目录
WORKDIR /root
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod 777 ./entrypoint.sh

CMD [ "/bin/bash", "entrypoint.sh" ]