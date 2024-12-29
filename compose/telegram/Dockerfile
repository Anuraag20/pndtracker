FROM python:3.9-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app

COPY . /usr/src/app/

RUN pip install -r requirements.txt
CMD ["python3", "monitor-telegram.py"]
