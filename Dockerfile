FROM alpine:latest

# 创建工作目录
WORKDIR /app

# 复制二进制文件到镜像中
COPY ./app/ ./

# 安装 frpc 和 frps
RUN chmod +x frpc frps && mv frpc frps /usr/bin/
