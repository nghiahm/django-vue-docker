# Django-VueJS

## link
```bash
https://www.postgresqltutorial.com/postgresql-administration/psql-commands/
https://github.com/ju-c/docker-django-drf-vue-nginx
```

## 1. Database connection (PostgreSQL)
```bash 
# psql -h {db_host} -U {db_user} --dbname {db_name}
psql -h postgres -U admin --dbname pg_db
\l # list databases
\dt # list tables
```
## Create `venv`
```bash
python3 -m venv venv
```
## Copy `.env` file
```bash 
cp .env.example backend/.env
```
## Ceate Django project
```bash
docker compose exec backend django-admin startproject {project_name}
docker compose run --rm backend django-admin startproject {project_name}
```
## Run Django project
```bash
docker compose run backend python manage.py runserver 0.0.0.0:8000
```