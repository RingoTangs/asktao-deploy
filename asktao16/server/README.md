

测试专用1
```bash
docker run -it -e MYSQL_HOST="192.168.0.21" \
-e MYSQL_USER="root" \
-e MYSQL_PASS="123456" \
asktao16-server:1.0 bash
```

测试专用2
```bash
# 创建数据目录
mkdir -p /home/docker-asktao/server/data
mkdir -p /home/docker-asktao/server/logs

docker run -d -e MYSQL_HOST="192.168.0.21" \
-e MYSQL_USER="root" \
-e MYSQL_PASS="123456" \
-e AAA_ADDR="192.168.0.21" \
-v /home/docker-asktao/server/data:/app/data \
-v /home/docker-asktao/server/logs:/app/logs \
-p 8101:8101 \
-p 8110:8110 \
-p 8120:8120 \
-p 6101:6101 \
asktao16-server:1.0
```

测试专用3
```bash
# 主机模式启动
docker run -it -e MYSQL_HOST="192.168.0.21" \
-e MYSQL_USER="root" \
-e MYSQL_PASS="123456" \
-e AAA_ADDR="192.168.0.21" \
--network=host \
--cpus=1 \
--memory=500MB \
--memory-swap=-1 \
--name asktao16-server \
asktao16-server:1.0 bash
```

删除命令
```bash
docker stop asktao16-server && \
docker rm asktao16-server && \
docker rmi asktao16-server:1.0
```

主机模式启动
```bash
mkdir -p /home/docker-asktao/server/data
mkdir -p /home/docker-asktao/server/logs

# 主机模式启动
docker run -d -e MYSQL_HOST="192.168.0.21" \
-e MYSQL_USER="root" \
-e MYSQL_PASS="123456" \
-e AAA_ADDR="192.168.0.21" \
-v /home/docker-asktao/server/data:/app/data \
-v /home/docker-asktao/server/logs:/app/logs \
--network=host \
--cpus=1 \
--memory=500MB \
--memory-swap=-1 \
--name asktao16-server \
asktao16-server:1.0
```

