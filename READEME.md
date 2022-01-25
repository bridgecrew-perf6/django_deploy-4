# Docker 部屬Django教學

- [Django + Uwsgi(單容器)](https://zhuanlan.zhihu.com/p/141976805)
- [Django + Uwsgi + Nginx](https://blog.csdn.net/weixin_42134789/article/details/106205182)

docker run -it --name mysite3 -p 8000:8000 \
    -v /data/code/django_deploy:/var/www/html/django_deploy \
    -d django_mysite_img:v1

