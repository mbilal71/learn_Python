# Suggested code may be subject to a license. Learn more: ~LicenseLog:739018581.

dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY poetry.lock pyproject.toml ./
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

COPY . .

CMD ["flask", "run", "--host=0.0.0.0"]
