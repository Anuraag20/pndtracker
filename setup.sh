#!/bin/bash

printf 'Setting up the telegram monitor...\n'

if [ ! -f src/telegram/*.session ]; then	
	pip install -r src/telegram/requirements.txt
	cd src/telegram/ && python3 monitor-telegram.py --setup
	cd ../..
fi

printf 'Completed...\n\n'


printf 'Setup complete!\n'

