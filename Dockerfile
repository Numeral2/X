FROM python:3.12

WORKDIR /app

COPY . .

RUN pip install fastapi uvicorn

EXPOSE 8000

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]
