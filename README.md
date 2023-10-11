# Dockerizing Django and VueJS with Postgres, Gunicorn, and Nginx


# Usage
## Commands
1. Run project 
```bash
make start
```
2. Install backend packages
```bash 
make poetry_add cmd=${package_name}
```
3. Install frontend packages
```bash 
make npm_install cmd=${package_name}
```
4. Connect postgresql database
```bash
psql -h ${db_host} -U ${db_user} --dbname ${db_name}
\l # list databases
\dt # list tables
```

# Links
https://www.postgresqltutorial.com/postgresql-administration/psql-commands/

