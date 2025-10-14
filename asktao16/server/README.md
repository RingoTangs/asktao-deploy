

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
  -e MYSQL_ROOT_PASSWORD=123456 \
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
   -e DIST="万里长城" \
   -p 223:22 \
   -p 8110:8110 \
   -p 6101:6101 \
   -p 8120:8120 \
   -p 9977:9977 \
   -p 8101:8101 \
   -p 6666:6666 \
   -p 8160:8160 \
   -p 8161:8161 \
   -p 8162:8162 \
   asktao16-server:1.0
```