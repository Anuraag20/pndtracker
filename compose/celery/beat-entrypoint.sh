#!/bin/sh

python3 check-db-ready.py
celery -A pndconsole beat --loglevel INFO --scheduler django_celery_beat.schedulers:DatabaseScheduler
