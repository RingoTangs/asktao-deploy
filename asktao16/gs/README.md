测试专用1
```bash
docker run -it -e SERVER_NAME="万里长城一线" \
-e AAA_ADDR="192.168.0.21" \
--network=host \
--name asktao16-gs asktao16-gs:1.0 bash
```

删除测试镜像
```
docker stop asktao16-gs && \
docker rm asktao16-gs && \
docker rmi asktao16-gs:1.0
```

启动一线
```bash
mkdir -p /home/docker-asktao/gs1/data && \
mkdir -p /home/docker-asktao/gs1/logs

# 主机模式启动
docker run -d -e SERVER_NAME="万里长城一线" \
-e AAA_ADDR="192.168.0.21" \
-v /home/docker-asktao/gs1/data:/app/data \
-v /home/docker-asktao/gs1/logs:/app/logs \
--network=host \
--cpus=1 \
--memory=200MB \
--memory-swap=-1 \
--name asktao16-gs1 asktao16-gs:1.0
```

启动二线
```bash
mkdir -p /home/docker-asktao/gs2/data && \
mkdir -p /home/docker-asktao/gs2/logs

# 主机模式启动
docker run -d -e SERVER_NAME="万里长城二线" \
-e AAA_ADDR="192.168.0.21" \
-v /home/docker-asktao/gs2/data:/app/data \
-v /home/docker-asktao/gs2/logs:/app/logs \
--network=host \
--cpus=1 \
--memory=200MB \
--memory-swap=-1 \
--name asktao16-gs2 asktao16-gs:1.0
```

启动三线
```bash
mkdir -p /home/docker-asktao/gs3/data && \
mkdir -p /home/docker-asktao/gs3/logs

# 主机模式启动
docker run -d -e SERVER_NAME="万里长城三线" \
-e AAA_ADDR="192.168.0.21" \
-v /home/docker-asktao/gs3/data:/app/data \
-v /home/docker-asktao/gs3/logs:/app/logs \
--network=host \
--cpus=1 \
--memory=200MB \
--memory-swap=-1 \
--name asktao16-gs3 asktao16-gs:1.0
```