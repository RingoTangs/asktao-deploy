```sh
docker run -d --name asktaoserver \
   --network asktao-network \
   --ip 172.20.0.11 \
   --cpus 1 \
   -m 1G \
   --memory-swap -1 \
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
   asktao14-server:1.0
```



```sh
docker run -d \
  --name mysql55 \
  --restart=always \
  -e MYSQL_ROOT_PASSWORD=151024llx \
  -v /home/mysql55/data:/var/lib/mysql \
  -v /home/mysql55/conf:/etc/mysql/conf.d \
  -p 3306:3306 \
  --network asktao-network \
  --ip 172.20.0.10 \
  mysql:5.5.43
```



```sh
docker run -d --name asktaoserver \
   --network host \
   --cpus 1 \
   -m 1G \
   --memory-swap -1 \
   asktao14-server:1.0
```



