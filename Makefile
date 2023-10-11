.SILENT: # hidden output command

COMPOSE = docker compose -f docker-compose.yml

destroy:
	@$(COMPOSE) down --rmi all --volumes --remove-orphans

build:
	@$(COMPOSE) build ${cmd}

remove:
	@make destroy
	docker system prune -a

start:
	@$(COMPOSE) up -d

stop:
	@$(COMPOSE) down

logs:
	@$(COMPOSE) logs -f $(cmd)

cp_env:
	cp .env .env.example
	cp .env.example backend/.envs/.backend

migrate:
	@$(COMPOSE) run --rm backend python manage.py migrate

makemigrations:
	@$(COMPOSE) run --rm backend python manage.py makemigrations ${cmd}

collectstatic:
	@$(COMPOSE) run --rm backend python manage.py collectstatic

createsuperuser:
	@$(COMPOSE) run --rm backend python manage.py createsuperuser

flush:
	@$(COMPOSE) run --rm backend python manage.py flush --no-input

poetry_add:
	@$(COMPOSE) exec backend poetry add ${cmd}

startapp:
	@$(COMPOSE) exec backend python manage.py startapp ${cmd}

npm_install:
	@$(COMPOSE) exec frontend npm install ${cmd}

run_backend:
	@$(COMPOSE) run --rm backend ${cmd}

run_frontend:
	@$(COMPOSE) run --rm frontend ${cmd}