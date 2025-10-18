FROM asktao16-ssh:1.0

LABEL maintainer="RingoTangs"
LABEL version="1.0"
LABEL description="Asktao 1.6 game server"

# 公网ip
ENV PUBLIC_IP = "127.0.0.1"
ENV DIST = "问道一区一线"

RUN mkdir -p /app/data

WORKDIR /app/temp

COPY ./1/ ./1/
COPY ./gs/ ./gs/
COPY ./magic_Linux32 ./magic_Linux32
COPY ./run.sh ./run.sh
COPY ./patch.sh ./patch.sh
COPY ./rungs ./rungs

RUN chmod 777 -R ./*

WORKDIR /root
COPY ./entrypoint.sh ./entrypoint.sh

WORKDIR /app/data

CMD [ "/bin/bash", "/root/entrypoint.sh" ]