FROM python:3.9.6-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/backend

COPY poetry.lock pyproject.toml /usr/src/backend/

RUN pip install poetry

RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction

COPY . .