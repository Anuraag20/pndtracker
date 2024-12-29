import time
import requests
import random

while True:    
    try: 
        requests.get('http://web:8000/forum/messages/1')
    except:
        delay = random.uniform(0.5, 2)
        time.sleep(delay)
        print('Trying again!')
    else:
        break
