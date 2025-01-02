FROM python:3.10

RUN apt-get -y update

WORKDIR /app

RUN pip install poetry

## COPY pyproject.toml poetry.lock ./

## RUN poetry install --no-root

COPY . .
