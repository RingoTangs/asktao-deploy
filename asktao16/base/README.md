```sh

docker run -d --name asktaossh -p 223:22 asktao16-ssh:1.0

```



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
docker run -d --name asktaossh \
   --network asktao-network \
   --ip 47.97.104.166 \
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
   asktao16-ssh:1.0
```

