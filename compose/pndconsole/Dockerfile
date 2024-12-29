FROM python:3.9-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app


COPY ./src/pndconsole/requirements.txt requirements.txt

RUN pip install -r requirements.txt

ADD ./src/pndconsole/ .

RUN python3 manage.py collectstatic --no-input 

COPY ./compose/*/*.sh ./compose/pndconsole/check-db-ready.py .

RUN chmod +x /usr/src/app/*.sh
