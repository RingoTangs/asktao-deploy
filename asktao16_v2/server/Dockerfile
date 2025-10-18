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
  
WORKDIR /app/data

COPY ./1/ ./1/
COPY ./aaa/ ./aaa/
COPY ./ccs/ ./ccs/
COPY ./csa/ ./csa/
COPY ./dba/ ./dba/
COPY ./entrypoint.sh ./entrypoint.sh
COPY ./run.sh ./run.sh
COPY ./patch.sh ./patch.sh

RUN chmod 777 -R ./*

EXPOSE 8110
EXPOSE 6101
EXPOSE 8120
EXPOSE 9977
EXPOSE 8101
EXPOSE 6666
EXPOSE 8012
EXPOSE 8022
EXPOSE 8030
EXPOSE 8032
EXPOSE 8600
EXPOSE 8040
EXPOSE 8050

CMD [ "/bin/bash", "entrypoint.sh" ]