FROM python:3.9.6-alpine

WORKDIR /usr/src/app/backend/

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# ADD docker-entrypoint.sh /docker-entrypoint.sh
# RUN chmod a+x /docker-entrypoint.sh
# ENTRYPOINT ["/docker-entrypoint.sh"]

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]