# docker-celery-flower

容器化的 celery-flower 服务，针对 [Flower](https://github.com/mher/flower) 开源项目进行镜像封装，用以提供指定 [Celery](http://www.celeryproject.org/) 的监控&管理功能。

## 徽章
### GitHub

[![GitHub followers](https://img.shields.io/github/followers/littlemo.svg?label=github%20follow)](https://github.com/littlemo) [![GitHub repo size in bytes](https://img.shields.io/github/repo-size/littlemo/docker-celery-flower.svg)](https://github.com/littlemo/docker-celery-flower) [![GitHub stars](https://img.shields.io/github/stars/littlemo/docker-celery-flower.svg?label=github%20stars)](https://github.com/littlemo/docker-celery-flower)

### Docker

[![Docker Build Status](https://img.shields.io/docker/build/littlemo/docker-celery-flower.svg)](https://hub.docker.com/r/littlemo/docker-celery-flower/) [![Docker Stars](https://img.shields.io/docker/stars/littlemo/docker-celery-flower.svg)](https://hub.docker.com/r/littlemo/docker-celery-flower/) [![Docker Pulls](https://img.shields.io/docker/pulls/littlemo/docker-celery-flower.svg)](https://hub.docker.com/r/littlemo/docker-celery-flower/) [![](https://images.microbadger.com/badges/image/littlemo/docker-celery-flower.svg)](https://microbadger.com/images/littlemo/docker-celery-flower) [![](https://images.microbadger.com/badges/commit/littlemo/docker-celery-flower.svg)](https://microbadger.com/images/littlemo/docker-celery-flower) [![](https://images.microbadger.com/badges/version/littlemo/docker-celery-flower.svg)](https://microbadger.com/images/littlemo/docker-celery-flower) [![Docker Automated build](https://img.shields.io/docker/automated/littlemo/docker-celery-flower.svg)](https://hub.docker.com/r/littlemo/docker-celery-flower/)

### 其他

[![license](https://img.shields.io/github/license/littlemo/docker-celery-flower.svg)](https://github.com/littlemo/docker-celery-flower) [![](https://img.shields.io/badge/bitcoin-donate-green.svg)](https://keybase.io/littlemo)

## 镜像标签(tags)

- `littlemo/docker-celery-flower:latest`

## 已安装的软件包声明
### 基础包

- flower
- redis

## 启动容器
### docker-cli

```bash
$ docker run -d -p 5555:5555 -v path/to/runtime:/app/runtime --name flower littlemo/docker-celery-flower:latest

$ open http://localhost:5555
```

### docker-compose

```yml
version: '2'
services:
  flower:
    image: littlemo/docker-celery-flower
    container_name: flower
    restart: unless-stopped
    ports:
      - "5555:5555"
    volumes:
      # 挂载持久化运行时路径
      - ./path/to/runtime:/app/runtime:rw
    environment:
      CELERY_BROKER_URL: redis://localhost:6379/0
      FLOWER_PERSISTENT: True  # 如果需要持久化Flower数据则使能此配置
```

## License

本项目采用 [![license](https://img.shields.io/github/license/littlemo/docker-celery-flower.svg)](https://github.com/littlemo/docker-celery-flower) 协议开源发布，请您在修改后维持开源发布，并为原作者额外署名，谢谢您的尊重


## 问题

如果您在使用该镜像时遇到任何问题，请查看镜像源码的 [littlemo/docker-celery-flower](https://github.com/littlemo/docker-celery-flower) Repo，并在其中提交 Issues 给我，多谢您的帮助~~
