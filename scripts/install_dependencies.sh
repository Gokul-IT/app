#!/bin/bash

echo "Updating system..."
sudo yum update -y

echo "Installing Python3..."
sudo yum install python3 -y

echo "Installing pip..."
sudo yum install python3-pip -y

echo "Installing virtualenv..."
pip3 install virtualenv

cd /home/ec2-user/django-app

echo "Creating virtual environment..."
python3 -m venv venv

source venv/bin/activate

echo "Installing requirements..."
pip install -r requirements.txt
