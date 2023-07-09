FROM python:3.9.6-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/backend

RUN mkdir -p /usr/src/backend/static
RUN mkdir -p /usr/src/backend/media

COPY poetry.lock pyproject.toml /usr/src/backend/

RUN pip install poetry

RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction

COPY ./entrypoint.sh .
RUN chmod +x /usr/src/backend/entrypoint.sh

COPY . .

CMD ["./entrypoint.sh"]