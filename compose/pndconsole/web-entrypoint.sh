#!/bin/sh

python3 manage.py migrate 
python3 manage.py createsuperuser --username admin --email test@test.com --noinput
gunicorn --bind 0.0.0.0:8000 pndconsole.wsgi
