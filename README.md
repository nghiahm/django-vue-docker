# Django-VueJS-PostgreSQL

## psql command
```bash
https://www.postgresqltutorial.com/postgresql-administration/psql-commands/
```
# Usage
## 1. Database connection
```bash 
# psql -h {db_host} -U {db_user} --dbname {db_name}
psql -h postgres -U admin --dbname pg_db
\l # list databases
\dt # list tables
```
## 2. Create `venv`
```bash
python3 -m venv venv
```
## 3. Copy `.env` file
```bash 
cp .env.example backend/.env
```
## Run project
```bash
make start
```
