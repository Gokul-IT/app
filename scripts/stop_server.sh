#!/bin/bash

echo "Stopping existing Django server..."

pkill -f runserver || true
