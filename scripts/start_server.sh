#!/bin/bash

cd /home/ec2-user/django-app

source venv/bin/activate


python manage.py migrate


python manage.py collectstatic --noinput


nohup python manage.py runserver 0.0.0.0:8000 &
