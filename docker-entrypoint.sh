#!/usr/bin/env bash
python3.5 manage.py makemigrations
python3.5 manage.py migrate
python3.5 manage.py runserver 0.0.0.0:8000
