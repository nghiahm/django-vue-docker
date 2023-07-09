#!/bin/sh

set -a
. ./.envs/.backend set
set +a

python manage.py flush --no-input
python manage.py makemigrations
python manage.py migrate

DJANGO_SUPERUSER_USERNAME=${DJANGO_SUPERUSER_USERNAME} \
DJANGO_SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL} \
DJANGO_SUPERUSER_PASSWORD=${DJANGO_SUPERUSER_PASSWORD} \
python manage.py createsuperuser --noinput

python manage.py collectstatic

gunicorn backend.wsgi:application --bind 0.0.0.0:8000

exec "$@"