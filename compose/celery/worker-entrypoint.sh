#!/bin/sh

python3 check-db-ready.py
celery -A pndconsole worker --loglevel INFO
