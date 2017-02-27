#!/usr/bin/env bash
python3.5 django_root/manage.py makemigrations
python3.5 django_root/manage.py migrate
python3.5 django_root/manage.py runserver 0.0.0.0:8000
