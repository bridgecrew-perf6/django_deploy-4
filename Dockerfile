FROM python:3.7

MAINTAINER Eddy

# 環境變數 (這行是告訴 python，有 log 就往外吐)
# 可參考 Is PYTHONUNBUFFERED=TRUE a good idea?
# (https://github.com/awslabs/amazon-sagemaker-examples/issues/319)
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /var/www/html/mysite1

# 在容器内/var/www/html/下创建 mysite1文件夹
RUN mkdir -p /var/www/html/mysite1

WORKDIR /var/www/html/mysite1

ADD . /var/www/html/mysite1

RUN pip install -r requirements.txt