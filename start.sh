#!/bin/bash

python manage.py makemigrations&&
python manage.py migrate&&
uwsgi --ini /var/www/html/mysite1/uwsgi.ini