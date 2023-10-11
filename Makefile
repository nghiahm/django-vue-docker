.SILENT: # hidden output command

destroy:
	docker compose down --rmi all --volumes --remove-orphans

build:
	docker compose build ${cmd}

remove:
	@make destroy
	docker system prune -a

start:
	docker compose up -d

stop:
	docker compose down

cp_env:
	cp .env .env.example
	cp .env.example backend/.envs/.backend

migrate:
	docker compose run --rm backend python manage.py migrate

migrations:
	docker compose run --rm backend python manage.py makemigrations

collectstatic:
	docker compose run --rm backend python manage.py collectstatic

createsuperuser:
	docker compose run --rm backend python manage.py createsuperuser

flush:
	docker compose run --rm backend python manage.py flush --no-input

npm_install:
	docker compose exec frontend npm install ${cmd}
