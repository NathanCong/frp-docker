#!/bin/bash

# 命令执行失败自动退出
set -e

# 第一步：先停止 FRP Client 服务
sudo docker compose -f frpc.yml down

# 第二步：再启动 FRP Client 服务
sudo docker compose -f frpc.yml up -d
