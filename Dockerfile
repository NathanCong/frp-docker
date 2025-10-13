FROM alpine:latest

# 创建工作目录
WORKDIR /app

# 复制二进制文件到镜像中
COPY ./app/frpc ./frpc
COPY ./app/frps ./frps

# 复制配置文件到镜像中
COPY ./conf/frpc.toml ./frpc.toml
COPY ./conf/frps.toml ./frps.toml

# 安装 frpc 和 frps
RUN chmod +x frpc frps && mv frpc frps /usr/bin/
