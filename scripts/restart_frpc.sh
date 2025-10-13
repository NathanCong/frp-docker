#!/bin/bash

# 命令执行失败自动退出
set -e

# 第一步：先停止 FRP Client 服务（清理本地构建镜像）
sudo docker compose -f docker-compose.frpc.yml down --rmi local

# 第二步：再启动 FRP Client 服务
sudo docker compose -f docker-compose.frpc.yml up -d
