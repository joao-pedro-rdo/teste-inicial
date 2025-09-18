FROM python:3.11-slim

COPY requirements.txt .

RUN apt update -y

RUN apt upgrade -y

RUN pip install --no-cache-dir -r requirements.txt


WORKDIR /app


COPY . .

EXPOSE 8000

CMD ["python", "app.py"]