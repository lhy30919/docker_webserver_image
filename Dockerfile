# Dockerfile.web
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive



# Apache 설치
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

# 웹 페이지 복사
COPY index.html /var/www/html/index.html

# 포트 오픈
EXPOSE 80

# 실행
CMD ["apachectl", "-D", "FOREGROUND"]
