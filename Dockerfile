# FROM django:onbuild
FROM python:latest

WORKDIR /var/www
COPY . /var/www

RUN pip install -r requirements.txt

ENTRYPOINT python app/manage.py runserver 0.0.0.0:8000
