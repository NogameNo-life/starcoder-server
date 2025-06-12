FROM python:3.10-slim

# Установка системных зависимостей
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Установка Python-зависимостей
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем сервер
COPY server.py .

# Загружаем модель при запуске
CMD ["python", "server.py"]
