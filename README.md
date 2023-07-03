# Django-VueJS

## 1. Create `venv`
```bash
python3 -m venv venv
```
## 2. Ceate Django project
```bash
docker compose exec backend django-admin startproject {project_name}
docker compose run --rm backend django-admin startproject {project_name}
```

## 3. Run Django project
```bash
docker compose run backend python backend/manage.py runserver 0.0.0.0:8000
```