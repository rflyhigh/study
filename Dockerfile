FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Set a default port if not provided
ENV PORT=8000

# Use CMD with shell form to ensure variable expansion
CMD uvicorn main:app --host 0.0.0.0 --port $PORT
