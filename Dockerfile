FROM python:3.10

RUN apt-get -y update

WORKDIR /app

RUN pip install poetry

COPY pyproject.toml poetry.lock ./

RUN poetry install --no-root

COPY . .

# Expose the application port
EXPOSE 8000

# Set the entrypoint to use poetry
ENTRYPOINT ["poetry", "run"]

# Start the application using uvicorn
CMD ["uvicorn", "src.main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
