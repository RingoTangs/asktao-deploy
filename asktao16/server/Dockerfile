FROM asktao16-ssh:1.0

LABEL maintainer="RingoTangs"
LABEL version="1.0"
LABEL description="Asktao 1.6 main server"

# MySQL 容器的 ip 地址（docker network 地址）
ENV MYSQL_HOST="127.0.0.1" 
ENV MYSQL_USER="root"
ENV MYSQL_PASSWORD="123456"
# 公网ip
ENV PUBLIC_IP = "127.0.0.1"
ENV DIST="万里长城"

# 创建目录
RUN mkdir -p /app/data
    
WORKDIR /app/temp

COPY ./1/ ./1/
COPY ./aaa/ ./aaa/
COPY ./ccs/ ./ccs/
COPY ./csa/ ./csa/
COPY ./dba/ ./dba/
COPY ./gs1/ ./gs1/
COPY ./gs2/ ./gs2/
COPY ./gs3/ ./gs3/
COPY ./jscode/dist/index.js ./index.js
COPY ./run.sh ./run.sh

WORKDIR /root
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod +x entrypoint.sh

EXPOSE 22
EXPOSE 8110
EXPOSE 6101
EXPOSE 8120
EXPOSE 9977
EXPOSE 8101
EXPOSE 6666
EXPOSE 8160
EXPOSE 8161
EXPOSE 8162

CMD [ "/bin/bash", "entrypoint.sh" ]