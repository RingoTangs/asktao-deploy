

```sh
# 创建 docker network
docker network create --subnet=172.20.0.0/24 --gateway=172.20.0.1 asktao-network

# 在网络中运行 mysql
docker run -d \
  --restart=always \
  --name mysql57 \
  -p 3306:3306 \
  -v /home/mysql/data:/var/lib/mysql \
  -v /home/mysql/conf/my.cnf:/etc/mysql/my.cnf:ro \
  -e MYSQL_ROOT_PASSWORD=151024llx \
  --network asktao-network \
  --ip 172.20.0.10 \
  mysql:5.7.44
  
# 运行 asktakssh
docker run -d --name asktaoserver \
   --network asktao-network \
   --ip 172.20.0.11 \
   -e MYSQL_HOST="172.20.0.10" \
   -e MYSQL_USER="root" \
   -e MYSQL_PASSWORD="151024llx" \
   -e PUBLIC_IP="47.97.104.166" \
   --memory-swap -1 \
   -p 8110:8110 \
   -p 6101:6101 \
   -p 8120:8120 \
   -p 9977:9977 \
   -p 8101:8101 \
   -p 6666:6666 \
   -p 8012:8012 \
   -p 8022:8022 \
   -p 8030:8030 \
   -p 8032:8032 \
   -p 8600:8600 \
   -p 8040:8040 \
   -p 8050:8050 \
   asktao16-server:2.0
   
# 运行 gameserver
mkdir -p /home/asktao/gs1
docker run -d --name gs1 \
   --network asktao-network \
   --ip 172.20.0.12 \
   -e PUBLIC_IP="47.97.104.166" \
   -e DIST="万里长城一线" \
   --memory-swap -1 \
   -v /home/asktao/gs1:/app/data \
   -p 8160:8160 \
   asktao16-gs:2.0
```



