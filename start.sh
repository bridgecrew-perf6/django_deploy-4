#!/bin/bash

python manage.py makemigrations&&
python manage.py migrate&&
uwsgi --ini /var/www/html/django_deploy/uwsgi.ini