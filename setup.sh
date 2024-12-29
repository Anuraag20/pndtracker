#!/bin/bash

printf 'Setting up the telegram monitor...\n'

if [ ! -f src/telegram/*.session ]; then	
	pip install -r src/telegram/requirements.txt
	cd src/telegram/ && python3 monitor-telegram.py --setup
	cd ../..
fi

printf 'Completed...\n\n'


printf 'Ensuring necessary files for web monitoring exist...\n'

if [ ! -f src/pndconsole/db.sqlite3 ]; then	
	touch src/pndconsole/db.sqlite3
fi

printf 'Setup complete!\n'

