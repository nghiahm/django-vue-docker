#!/bin/sh
echo 'Run migration.....'
# python3 manage.py makemigrations
python3 manage.py migrate
echo 'Create Superuser'
python3 manage.py createsuperuser --noinput || echo "Superuser already created"
echo 'Collect static.....'
python3 manage.py collectstatic --noinput
exec "$@"