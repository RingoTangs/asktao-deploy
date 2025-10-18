FROM asktao16-ssh:1.0

LABEL maintainer="RingoTangs"
LABEL version="1.0"
LABEL description="Asktao 1.4 main server"

WORKDIR /app/data

COPY ./magic_Linux32 ./magic_Linux32
COPY ./1/ ./1/
COPY ./aaa/ ./aaa/
COPY ./ccs/ ./ccs/
COPY ./dba/ ./dba/
COPY ./gs/ ./gs/
COPY ./run.sh ./run.sh
COPY ./runaaa ./runaaa
COPY ./runccs ./runccs
COPY ./rundba ./rundba
COPY ./rungs ./rungs


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

CMD ["/usr/sbin/sshd", "-D"]