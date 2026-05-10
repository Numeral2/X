FROM python:3.12-slim

# Instalacija sistemskih ovisnosti za Semgrep
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Instalacija Python paketa
RUN pip install --no-cache-dir fastapi uvicorn openai semgrep pydantic

WORKDIR /app
COPY . .

# FastAPI radi na 8090
EXPOSE 8090

CMD ["python", "-m", "uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8090"]
