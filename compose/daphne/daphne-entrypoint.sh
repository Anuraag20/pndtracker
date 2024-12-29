#!/bin/sh

python3 check-db-ready.py
daphne -b 0.0.0.0 -p 8001 pndconsole.asgi:application
