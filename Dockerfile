FROM python:3.5

# 定义构建时元数据
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL maintainer="moore@moorehy.com" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="docker-celery-flower" \
      org.label-schema.description="Celery Flower Server" \
      org.label-schema.url="https://hub.docker.com/r/littlemo/docker-celery-flower/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/littlemo/docker-celery-flower" \
      org.label-schema.vendor="littlemo" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

# 添加Python软件包需求文件
RUN pip install --no-cache-dir flower redis

# 创建路径并设置工作路径
RUN mkdir -p /app/runtime
WORKDIR /app

# 开放对外端口
EXPOSE 5555

# Volumes 挂载点配置
VOLUME ["/app"]

# 启动命令
CMD ["flower", "--port=5555"]
