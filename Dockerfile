FROM python:3.12-slim

WORKDIR /app

COPY tests/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY tests/ ./tests/

EXPOSE 8000

CMD ["uvicorn", "tests.app:app", "--host", "0.0.0.0", "--port", "8000"]
