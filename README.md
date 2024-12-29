# PND Tracker

1. Update the values for postgres db credentials in docker-compose.yaml
2. Update the values for db credentials (from step 1), google gemini API key and the [django secret](https://docs.gitguardian.com/secrets-detection/secrets-detection-engine/detectors/specifics/django_secret_key#:~:text=Summary%3A%20The%20Django%20secret%20key,cookies%20sent%20by%20the%20application.) in src/pndconsole/pndconsole/config.ini
3. Update the telegram API key and Hash in src/telegram/config.ini
4. Run ./setup.sh 
5. Finally run the following commands to run the website: 
> docker compose build <br/>
> docker compose up




