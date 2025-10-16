#!/bin/bash

# 停止 FRP Client 服务（清理本地构建镜像）
sudo docker compose -f docker-compose.frpc.yml down --rmi local
