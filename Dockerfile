FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    curl \
    git \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir fastapi uvicorn openai pydantic
RUN pip install --no-cache-dir semgrep
