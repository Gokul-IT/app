#!/bin/bash

cd /home/ec2-user/django-app

source venv/bin/activate

echo "Starting Django server..."

nohup python manage.py runserver 0.0.0.0:8000 > output.log 2>&1 &
