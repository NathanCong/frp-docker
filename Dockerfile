FROM alpine:latest

# 安装必要的工具
RUN apk add --no-cache ca-certificates wget

# 下载并安装 frp
ENV FRP_VERSION=0.64.0
ENV FRP_PACKAGE_NAME=frp_${FRP_VERSION}_linux_amd64
ENV FRP_DOWNLOAD_URL=https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/${FRP_PACKAGE_NAME}.tar.gz
WORKDIR /tmp
RUN wget ${FRP_DOWNLOAD_URL} \
  && tar xzf ${FRP_PACKAGE_NAME}.tar.gz \
  && cd ${FRP_PACKAGE_NAME} \
  && mv frpc frps /usr/bin/ \
  && cd .. && rm -rf ${FRP_PACKAGE_NAME}

# 创建工作目录
WORKDIR /app

# 复制配置文件
COPY ./conf/frpc.toml ./frpc.toml
COPY ./conf/frps.toml ./frps.toml
