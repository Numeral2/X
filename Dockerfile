FROM python:3.12

RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    fastapi \
    uvicorn \
    openai \
    semgrep \
    pydantic

WORKDIR /app
COPY . .

EXPOSE 8090

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8090"]
