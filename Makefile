.SILENT: # hidden output command

destroy:
	docker compose down --rmi all --volumes --remove-orphans

rebuild:
	docker compose build --no-cache

remove:
	@make destroy
	docker system prune -a

up:
	@make cp-env
	docker compose up

cp-env:
	cp .env .env.example
	cp .env.example backend/.envs/.backend

migrate:
	docker compose run --rm backend python manage.py migrate

migrations:
	docker compose run --rm backend python manage.py makemigrations