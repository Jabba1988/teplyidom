#! /bin/sh

python /app/manage.py collectstatic --noinput
python /app/manage.py makemigrations --noinput

python /app/manage.py runserver 0.0.0.0:8000