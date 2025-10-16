#!/bin/bash

# 停止 FRP Server 服务（清理本地构建镜像）
sudo docker compose -f docker-compose.frps.yml down --rmi local
